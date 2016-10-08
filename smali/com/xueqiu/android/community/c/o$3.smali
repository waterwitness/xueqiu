.class final Lcom/xueqiu/android/community/c/o$3;
.super Ljava/lang/Object;
.source "PublicTimelineFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/o;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/o;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/xueqiu/android/community/c/o$3;->a:Lcom/xueqiu/android/community/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    .prologue
    .line 320
    if-lez p3, :cond_0

    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    .line 321
    const-string v0, "scroll"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lastSavedFirstVisibleItem: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xueqiu/android/community/c/o$3;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v2}, Lcom/xueqiu/android/community/c/o;->k(Lcom/xueqiu/android/community/c/o;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "firstVisibleItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "visibleItemCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "totalItemCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$3;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->k(Lcom/xueqiu/android/community/c/o;)I

    move-result v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$3;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->l(Lcom/xueqiu/android/community/c/o;)I

    move-result v0

    if-eq v0, p4, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$3;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->m(Lcom/xueqiu/android/community/c/o;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$3;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0, p2}, Lcom/xueqiu/android/community/c/o;->a(Lcom/xueqiu/android/community/c/o;I)I

    .line 328
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$3;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0, p4}, Lcom/xueqiu/android/community/c/o;->b(Lcom/xueqiu/android/community/c/o;I)I

    .line 329
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$3;->a:Lcom/xueqiu/android/community/c/o;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/o$3;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/o;->m(Lcom/xueqiu/android/community/c/o;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/community/c/o;->a(Lcom/xueqiu/android/community/c/o;J)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$3;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0, p2}, Lcom/xueqiu/android/community/c/o;->c(Lcom/xueqiu/android/community/c/o;I)I

    .line 333
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$3;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0, p3}, Lcom/xueqiu/android/community/c/o;->d(Lcom/xueqiu/android/community/c/o;I)I

    .line 334
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 6

    .prologue
    .line 295
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scrollState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    if-nez p2, :cond_3

    .line 299
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$3;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->h(Lcom/xueqiu/android/community/c/o;)I

    move-result v1

    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$3;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->f(Lcom/xueqiu/android/community/c/o;)Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, v1, v0

    .line 300
    iget-object v1, p0, Lcom/xueqiu/android/community/c/o$3;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/o;->h(Lcom/xueqiu/android/community/c/o;)I

    move-result v1

    iget-object v2, p0, Lcom/xueqiu/android/community/c/o$3;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v2}, Lcom/xueqiu/android/community/c/o;->i(Lcom/xueqiu/android/community/c/o;)I

    move-result v2

    add-int/2addr v1, v2

    .line 301
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 302
    :cond_0
    iget-object v2, p0, Lcom/xueqiu/android/community/c/o$3;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v2}, Lcom/xueqiu/android/community/c/o;->j(Lcom/xueqiu/android/community/c/o;)Lcom/xueqiu/android/community/a/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/a/o;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/xueqiu/android/community/c/o$3;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/o;->j(Lcom/xueqiu/android/community/c/o;)Lcom/xueqiu/android/community/a/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/o;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    move v3, v0

    .line 303
    :goto_1
    if-ge v3, v2, :cond_3

    .line 304
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$3;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->j(Lcom/xueqiu/android/community/c/o;)Lcom/xueqiu/android/community/a/o;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/a/o;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/PublicTimeline;

    .line 305
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getData()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 307
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v0

    const/16 v4, 0x9

    if-ne v0, v4, :cond_1

    .line 308
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$3;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->j(Lcom/xueqiu/android/community/c/o;)Lcom/xueqiu/android/community/a/o;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/a/o;->d(I)V

    .line 309
    const-string v0, "STOCK"

    const-string v4, "type"

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$3;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->j(Lcom/xueqiu/android/community/c/o;)Lcom/xueqiu/android/community/a/o;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/a/o;->c(I)V

    .line 303
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v2, v1

    .line 302
    goto :goto_0

    .line 315
    :cond_3
    return-void
.end method
