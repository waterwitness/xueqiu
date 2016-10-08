package com.sleepycat.b.d;

import com.sleepycat.b.p.ag;
import com.sleepycat.b.p.ah;

public final class h
{
  public static final ag a = new ag("nEvictPasses", "Number of eviction passes, an indicator of the eviction activity level.");
  public static final ag b = new ag("nNodesSelected", "Number of nodes which pass the first criteria for eviction, an indicator of eviction efficiency. nNodesExplicitlyEvicted plus nBINsStripped will roughly equal nNodesSelected. nNodesSelected will be somewhat larger than the sum because some selected nodes don't pass a final screening.");
  public static final ag c = new ag("nNodesScanned", "Number of nodes scanned in order to select the eviction set, an indicator of eviction overhead.");
  public static final ag d = new ag("nNodesEvicted", "Number of nodes selected and removed from the cache.");
  public static final ag e = new ag("nRootNodesEvicted", "Number of database root nodes evicted.");
  public static final ag f = new ag("nBINsStripped", "The number of BINs for which the child LNs have been removed (stripped) and are no longer in the cache. BIN stripping is the most efficient form of eviction.");
  public static final ag g = new ag("requiredEvictBytes", "Number of bytes we need to evict in order to get under budget.", ah.b);
  public static final ag h = new ag("nSharedCacheEnvironments", "Number of Environments sharing the cache.", ah.b);
  public static final ag i = new ag("nLNsFetch", "Number of LNs (data records) requested by btree operations. Can be used to gauge cache hit/miss ratios.");
  public static final ag j = new ag("nUpperINsFetch", "Number of Upper INs (non-bottom internal nodes) requested by btree operations. Can be used to gauge cache hit/miss ratios.");
  public static final ag k = new ag("nBINsFetch", "Number of BINs (bottom internal nodes) requested by btree operations. Can be used to gauge cache hit/miss ratios.");
  public static final ag l = new ag("nLNsFetchMiss", "Number of LNs (data records) requested by btree operations that were not in cache. Can be used to gauge cache hit/miss ratios.");
  public static final ag m = new ag("nUpperINsFetchMiss", "Number of Upper INs (non-bottom internal nodes) requested by btree operations that were not in cache. Can be used to gauge cache hit/miss ratios.");
  public static final ag n = new ag("nBINsFetchMiss", "Number of BINs (bottom internal nodes) requested by btree operations that were not in cache. Can be used to gauge cache hit/miss ratios.");
  public static final ag o = new ag("nCachedUpperINs", "Number of upper INs (non-bottom internal nodes) in cache. The cache holds INs and BINS, so this indicates the proportion used by each type of node. When used on shared environment caches, will only be visible via StatConfig.setFast(false)", ah.b);
  public static final ag p = new ag("nCachedBINs", "Number of BINs (bottom internal nodes) in cache. The cache holds INs and BINS, so this indicates the proportion used by each type of node. When used on shared environment caches, will only be visible via StatConfig.setFast(false)", ah.b);
  public static final ag q = new ag("nThreadUnavailable", "Number of eviction tasks that were submitted to the background evictor pool, but were refused because all eviction threads were busy. The user may want to change the size of the evictor pool through the je.evictor.*threads properties.");
  public static final ag r = new ag("nINSparseTarget", "Number of INs that use a compact sparse array representation to point to child nodes in the cache.", ah.b);
  public static final ag s = new ag("nINNoTarget", "Number of INs that use a compact representation when none of its child nodes arein the cache.", ah.b);
  public static final ag t = new ag("nINCompactKey", "Number of INs that use a compact key representation to minimize the key object representation overhead.", ah.b);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\d\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */