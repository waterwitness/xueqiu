package com.google.gson.internal;

class LinkedHashTreeMap$AvlIterator<K, V>
{
  private LinkedHashTreeMap.Node<K, V> stackTop;
  
  public LinkedHashTreeMap.Node<K, V> next()
  {
    LinkedHashTreeMap.Node localNode2 = this.stackTop;
    if (localNode2 == null) {
      return null;
    }
    Object localObject2 = localNode2.parent;
    localNode2.parent = null;
    LinkedHashTreeMap.Node localNode1;
    for (Object localObject1 = localNode2.right; localObject1 != null; localObject1 = localNode1)
    {
      ((LinkedHashTreeMap.Node)localObject1).parent = ((LinkedHashTreeMap.Node)localObject2);
      localNode1 = ((LinkedHashTreeMap.Node)localObject1).left;
      localObject2 = localObject1;
    }
    this.stackTop = ((LinkedHashTreeMap.Node)localObject2);
    return localNode2;
  }
  
  void reset(LinkedHashTreeMap.Node<K, V> paramNode)
  {
    LinkedHashTreeMap.Node<K, V> localNode = null;
    while (paramNode != null)
    {
      paramNode.parent = localNode;
      LinkedHashTreeMap.Node localNode1 = paramNode.left;
      localNode = paramNode;
      paramNode = localNode1;
    }
    this.stackTop = localNode;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\google\gson\internal\LinkedHashTreeMap$AvlIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */