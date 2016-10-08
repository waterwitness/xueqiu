.class public final Lcom/xueqiu/android/cube/a/k;
.super Lcom/xueqiu/android/common/a/d;
.source "CubeSearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/cube/model/Cube;",
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
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/cube/a/k;-><init>(Landroid/app/Activity;B)V

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;B)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    const v0, 0x7f0301b1

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;I)V

    .line 41
    iput-boolean v1, p0, Lcom/xueqiu/android/cube/a/k;->g:Z

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/k;->f:Landroid/app/Dialog;

    .line 49
    iput-object p1, p0, Lcom/xueqiu/android/cube/a/k;->e:Landroid/app/Activity;

    .line 50
    iput-boolean v1, p0, Lcom/xueqiu/android/cube/a/k;->g:Z

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/a/l;Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/xueqiu/android/cube/a/k;->b(Lcom/xueqiu/android/cube/a/l;Lcom/xueqiu/android/cube/model/Cube;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/a/k;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/a/k;->g:Z

    return v0
.end method

.method private static b(Lcom/xueqiu/android/cube/a/l;Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/l;->d:Landroid/widget/ImageView;

    const v1, 0x7f020146

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/l;->d:Landroid/widget/ImageView;

    const v1, 0x7f020145

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected final b()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/k;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/a/k;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/k;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/k;->f:Landroid/app/Dialog;

    .line 186
    :cond_0
    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 58
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    new-instance v1, Lcom/xueqiu/android/cube/a/l;

    invoke-direct {v1}, Lcom/xueqiu/android/cube/a/l;-><init>()V

    .line 60
    const v0, 0x7f0e063f

    .line 61
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/cube/a/l;->b:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0e0642

    .line 63
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/cube/a/l;->c:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0e020a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/cube/a/l;->d:Landroid/widget/ImageView;

    .line 65
    const v0, 0x7f0e0648

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/cube/a/l;->a:Landroid/widget/ImageView;

    .line 66
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/a/k;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Cube;

    .line 71
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/l;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    .line 76
    :goto_1
    const v5, 0x7f07034b

    invoke-static {v5}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v5

    .line 78
    new-instance v6, Landroid/text/SpannableStringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 80
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const v7, 0x7f0d010e

    invoke-static {v7}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v7

    invoke-direct {v5, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 81
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    const/16 v4, 0x22

    invoke-virtual {v6, v5, v7, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 83
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/l;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-static {v1, v0}, Lcom/xueqiu/android/cube/a/k;->b(Lcom/xueqiu/android/cube/a/l;Lcom/xueqiu/android/cube/model/Cube;)V

    .line 87
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getMarket()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/cube/model/Market;->valueOf(Ljava/lang/String;)Lcom/xueqiu/android/cube/model/Market;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Market;->isHK()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/l;->a:Landroid/widget/ImageView;

    const v4, 0x7f020420

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    :goto_2
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/l;->d:Landroid/widget/ImageView;

    new-instance v4, Lcom/xueqiu/android/cube/a/k$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/xueqiu/android/cube/a/k$1;-><init>(Lcom/xueqiu/android/cube/a/k;Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/a/l;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-object v3

    .line 68
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/a/l;

    move-object v1, v0

    goto/16 :goto_0

    .line 74
    :cond_1
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 91
    :cond_2
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Market;->isUS()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/l;->a:Landroid/widget/ImageView;

    const v4, 0x7f020422

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 95
    :cond_3
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/l;->a:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
