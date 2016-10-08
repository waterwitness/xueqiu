.class public final Lcom/xueqiu/android/stock/a/ad;
.super Lcom/xueqiu/android/common/a/d;
.source "StockListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/stock/model/Stock;",
        ">;"
    }
.end annotation


# instance fields
.field e:Landroid/app/Activity;

.field f:Landroid/app/Dialog;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/stock/a/ad;-><init>(Landroid/app/Activity;B)V

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;B)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const v0, 0x7f0301b1

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;I)V

    .line 40
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/a/ad;->g:Z

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/ad;->f:Landroid/app/Dialog;

    .line 48
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/ad;->e:Landroid/app/Activity;

    .line 49
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/a/ad;->g:Z

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/a/ae;Lcom/xueqiu/android/stock/model/Stock;)V
    .locals 0

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/xueqiu/android/stock/a/ad;->b(Lcom/xueqiu/android/stock/a/ae;Lcom/xueqiu/android/stock/model/Stock;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/a/ad;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/a/ad;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/a/ad;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/ad;->e:Landroid/app/Activity;

    return-object v0
.end method

.method private static b(Lcom/xueqiu/android/stock/a/ae;Lcom/xueqiu/android/stock/model/Stock;)V
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Stock;->isHasExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/ae;->d:Landroid/widget/ImageView;

    const v1, 0x7f020146

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/ae;->d:Landroid/widget/ImageView;

    const v1, 0x7f020145

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected final b()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/ad;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/a/ad;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/ad;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/ad;->f:Landroid/app/Dialog;

    .line 169
    :cond_0
    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    new-instance v1, Lcom/xueqiu/android/stock/a/ae;

    invoke-direct {v1}, Lcom/xueqiu/android/stock/a/ae;-><init>()V

    .line 59
    const v0, 0x7f0e063f

    .line 60
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/ae;->b:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0e0642

    .line 62
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/ae;->c:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0e020a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/ae;->d:Landroid/widget/ImageView;

    .line 64
    const v0, 0x7f0e0648

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/ae;->a:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/a/ad;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Stock;

    .line 70
    iget-object v3, v1, Lcom/xueqiu/android/stock/a/ae;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v3, v1, Lcom/xueqiu/android/stock/a/ae;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/a/ad;->b(Lcom/xueqiu/android/stock/a/ae;Lcom/xueqiu/android/stock/model/Stock;)V

    .line 73
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/xueqiu/android/base/util/as;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    iget-object v3, v1, Lcom/xueqiu/android/stock/a/ae;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object v3, v1, Lcom/xueqiu/android/stock/a/ae;->a:Landroid/widget/ImageView;

    const v4, 0x7f020420

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    :goto_1
    iget-object v3, v1, Lcom/xueqiu/android/stock/a/ae;->d:Landroid/widget/ImageView;

    new-instance v4, Lcom/xueqiu/android/stock/a/ad$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/xueqiu/android/stock/a/ad$1;-><init>(Lcom/xueqiu/android/stock/a/ad;Lcom/xueqiu/android/stock/model/Stock;Lcom/xueqiu/android/stock/a/ae;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-object v2

    .line 67
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/a/ae;

    move-object v1, v0

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/xueqiu/android/base/util/as;->c(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    iget-object v3, v1, Lcom/xueqiu/android/stock/a/ae;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-object v3, v1, Lcom/xueqiu/android/stock/a/ae;->a:Landroid/widget/ImageView;

    const v4, 0x7f020422

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 80
    :cond_2
    iget-object v3, v1, Lcom/xueqiu/android/stock/a/ae;->a:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
