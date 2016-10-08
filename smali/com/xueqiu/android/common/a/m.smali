.class public abstract Lcom/xueqiu/android/common/a/m;
.super Landroid/widget/BaseAdapter;
.source "SeparatedGroupAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<TT;",
            "Ljava/util/List",
            "<TS;>;>;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<TT;",
            "Ljava/util/List",
            "<TS;>;>;>;"
        }
    .end annotation
.end field

.field private c:Lcom/xueqiu/android/common/a/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/a/m",
            "<TT;TS;>.com/xueqiu/android/common/a/o;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<TT;",
            "Ljava/util/List",
            "<TS;>;>;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 239
    iput-object v0, p0, Lcom/xueqiu/android/common/a/m;->b:Ljava/util/List;

    .line 240
    iput-object v0, p0, Lcom/xueqiu/android/common/a/m;->c:Lcom/xueqiu/android/common/a/o;

    .line 27
    iput-object p1, p0, Lcom/xueqiu/android/common/a/m;->a:Ljava/util/List;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/a/m;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/xueqiu/android/common/a/m;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/a/m;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/common/a/m;->b:Ljava/util/List;

    return-object p1
.end method

.method private a(I)Z
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/m;->b(I)Lcom/xueqiu/android/common/a/n;

    move-result-object v0

    .line 91
    iget v0, v0, Lcom/xueqiu/android/common/a/n;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)Lcom/xueqiu/android/common/a/n;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 101
    new-instance v3, Lcom/xueqiu/android/common/a/n;

    invoke-direct {v3}, Lcom/xueqiu/android/common/a/n;-><init>()V

    .line 103
    invoke-virtual {p0}, Lcom/xueqiu/android/common/a/m;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    move v1, v0

    .line 104
    :goto_0
    if-ge v2, v4, :cond_0

    .line 105
    iput v2, v3, Lcom/xueqiu/android/common/a/n;->a:I

    .line 106
    invoke-virtual {p0}, Lcom/xueqiu/android/common/a/m;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/xueqiu/android/common/a/m;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 108
    add-int v5, v1, v0

    if-lt v5, p1, :cond_1

    .line 109
    sub-int v0, p1, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, v3, Lcom/xueqiu/android/common/a/n;->b:I

    .line 117
    :cond_0
    return-object v3

    .line 112
    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    .line 104
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/xueqiu/android/common/a/m;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/xueqiu/android/common/a/m;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public abstract a(IILandroid/view/View;)Landroid/view/View;
.end method

.method public abstract a(ILandroid/view/View;)Landroid/view/View;
.end method

.method public final a(II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TS;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/xueqiu/android/common/a/m;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/a/m;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 158
    :try_start_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/a/m;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    .line 160
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 164
    goto :goto_0
.end method

.method final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<TT;",
            "Ljava/util/List",
            "<TS;>;>;>;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/xueqiu/android/common/a/m;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/a/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/xueqiu/android/common/a/m;->b:Ljava/util/List;

    .line 227
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/a/m;->a:Ljava/util/List;

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 4

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/xueqiu/android/common/a/m;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 33
    invoke-virtual {p0}, Lcom/xueqiu/android/common/a/m;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 34
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, v1

    move v1, v0

    .line 35
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 36
    :cond_1
    return v1
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/xueqiu/android/common/a/m;->c:Lcom/xueqiu/android/common/a/o;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/xueqiu/android/common/a/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/common/a/o;-><init>(Lcom/xueqiu/android/common/a/m;B)V

    iput-object v0, p0, Lcom/xueqiu/android/common/a/m;->c:Lcom/xueqiu/android/common/a/o;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/a/m;->c:Lcom/xueqiu/android/common/a/o;

    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/m;->b(I)Lcom/xueqiu/android/common/a/n;

    move-result-object v1

    .line 42
    iget v0, v1, Lcom/xueqiu/android/common/a/n;->b:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/a/m;->a()Ljava/util/List;

    move-result-object v0

    iget v2, v1, Lcom/xueqiu/android/common/a/n;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget v1, v1, Lcom/xueqiu/android/common/a/n;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 50
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/m;->b(I)Lcom/xueqiu/android/common/a/n;

    move-result-object v0

    .line 56
    iget v1, v0, Lcom/xueqiu/android/common/a/n;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 57
    iget v0, v0, Lcom/xueqiu/android/common/a/n;->a:I

    invoke-virtual {p0, v0, p2}, Lcom/xueqiu/android/common/a/m;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget v1, v0, Lcom/xueqiu/android/common/a/n;->a:I

    iget v0, v0, Lcom/xueqiu/android/common/a/n;->b:I

    invoke-virtual {p0, v1, v0, p2}, Lcom/xueqiu/android/common/a/m;->a(IILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x2

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/m;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
