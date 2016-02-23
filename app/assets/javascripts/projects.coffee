###
Method name: toggleExpandable
Description:
  This method changes the height and adds/removes the expanded class to an element based on whether
  or not it already has it.
  The element to change is found using the passed in id and the expandable class.
  When removing the expanded class, the element is set to a height of 0.
  When adding the expanded class, the height of the element is set to match the outer height of the
  child element with the expandableContent class. As such, the expandable element must have a child
  with the expandableContent class in order to function.
  Height changes are animated and after the element has fully expanded, the height is set to auto.
Params:
  id - the id used to identify the element to expand/contract
###
@toggleExpandable = (id) ->
  expandable = $("##{id}.expandable")
  if expandable.hasClass "expanded"
    expandable.animate { height: 0 }
    expandable.removeClass "expanded"
  else
    expandableContent = expandable.children ".expandableContent"
    expandable.animate { height: $(expandableContent).outerHeight true },
      complete: -> expandable.height "auto"
    expandable.addClass "expanded"


@toggleIcon = (id, icon1, icon2) ->
  iconElement = $("##{id}")
  if iconElement.hasClass icon1
    iconElement.removeClass icon1
    iconElement.addClass icon2
  else if iconElement.hasClass icon2
    iconElement.removeClass icon2
    iconElement.addClass icon1