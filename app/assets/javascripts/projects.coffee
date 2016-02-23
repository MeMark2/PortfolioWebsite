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


###
Method name: toggleClasses
Description:
  This method searches for one of the two classes within an element and switches one for the other.
Params:
  id - the id used to identify the element to toggle classes on
  class1 - one of the classes to switch
  class2 - the other class to switch
###
@toggleClasses = (id, class1, class2) ->
  iconElement = $("##{id}")
  if iconElement.hasClass class1
    iconElement.removeClass class1
    iconElement.addClass class2
  else if iconElement.hasClass class2
    iconElement.removeClass class2
    iconElement.addClass class1