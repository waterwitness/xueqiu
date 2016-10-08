.class public final Lcom/xueqiu/android/cube/widget/c;
.super Landroid/widget/BaseAdapter;
.source "CubeFilterHeaderView.java"


# instance fields
.field a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/widget/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/widget/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 339
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/cube/widget/c;->a:I

    .line 348
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/xueqiu/android/cube/widget/c;->c:Landroid/view/LayoutInflater;

    .line 349
    iput-object p2, p0, Lcom/xueqiu/android/cube/widget/c;->b:Ljava/util/List;

    .line 350
    const v0, 0x7f030221

    iput v0, p0, Lcom/xueqiu/android/cube/widget/c;->d:I

    .line 351
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/cube/widget/c;->e:I

    .line 352
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/List;B)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/cube/widget/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 366
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const v4, 0x7f0e0772

    const/4 v3, 0x0

    .line 372
    if-nez p2, :cond_0

    .line 373
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/c;->c:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/xueqiu/android/cube/widget/c;->d:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 375
    :cond_0
    const v0, 0x7f0e0771

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 376
    iget-object v1, p0, Lcom/xueqiu/android/cube/widget/c;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/cube/widget/d;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/widget/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget v1, p0, Lcom/xueqiu/android/cube/widget/c;->a:I

    if-ne p1, v1, :cond_1

    .line 378
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    :goto_0
    iget v0, p0, Lcom/xueqiu/android/cube/widget/c;->e:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    .line 383
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 387
    :goto_1
    return-object p2

    .line 380
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 385
    :cond_2
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
