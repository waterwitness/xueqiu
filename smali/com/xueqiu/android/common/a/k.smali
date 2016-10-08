.class public final Lcom/xueqiu/android/common/a/k;
.super Landroid/widget/BaseAdapter;
.source "SelectAlertAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/a/k;->b:Landroid/view/LayoutInflater;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/a/k;->a:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 73
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/xueqiu/android/common/a/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 76
    iget-object v3, p0, Lcom/xueqiu/android/common/a/k;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xueqiu/android/common/a/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/common/a/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 40
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 46
    if-nez p2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/xueqiu/android/common/a/k;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 48
    new-instance v1, Lcom/xueqiu/android/common/a/l;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/a/l;-><init>(Lcom/xueqiu/android/common/a/k;)V

    .line 49
    const v0, 0x7f0e0348

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/common/a/l;->a:Landroid/widget/TextView;

    .line 50
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/a/l;

    .line 54
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/a/k;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    iget-object v0, v0, Lcom/xueqiu/android/common/a/l;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-object p2
.end method
