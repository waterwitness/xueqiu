.class public final Lcom/xueqiu/android/common/widget/ao;
.super Landroid/widget/BaseAdapter;
.source "ShareSheet.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Landroid/content/Context;

.field c:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 879
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 875
    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ao;->a:Ljava/util/List;

    .line 876
    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ao;->b:Landroid/content/Context;

    .line 877
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/common/widget/ao;->c:I

    .line 880
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/ao;->b:Landroid/content/Context;

    .line 881
    const v0, 0x7f0300e4

    iput v0, p0, Lcom/xueqiu/android/common/widget/ao;->c:I

    .line 882
    iput-object p2, p0, Lcom/xueqiu/android/common/widget/ao;->a:Ljava/util/List;

    .line 883
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ao;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ao;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 897
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 902
    if-nez p2, :cond_0

    .line 903
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ao;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/common/widget/ao;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 905
    :cond_0
    const v0, 0x7f0e00a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 906
    const v1, 0x7f0e00a0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 908
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/ao;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "title"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 909
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ao;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "icon"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 910
    return-object p2
.end method
