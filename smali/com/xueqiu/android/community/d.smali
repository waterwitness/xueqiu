.class public final Lcom/xueqiu/android/community/d;
.super Lcom/xueqiu/android/common/c;
.source "FindPeopleActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/c;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/xueqiu/android/common/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/r",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private ak:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

.field private al:Landroid/widget/LinearLayout;

.field private b:I

.field private c:I

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/xueqiu/android/community/e;

.field private g:I

.field private h:Lcom/xueqiu/android/base/b/ap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 133
    iput-object v1, p0, Lcom/xueqiu/android/community/d;->a:Lcom/xueqiu/android/common/r;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/community/d;->b:I

    .line 136
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/d;->c:I

    .line 138
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/d;->d:Landroid/util/SparseArray;

    .line 139
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/d;->e:Landroid/util/SparseArray;

    .line 140
    iput-object v1, p0, Lcom/xueqiu/android/community/d;->f:Lcom/xueqiu/android/community/e;

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/community/d;->g:I

    .line 143
    iput-object v1, p0, Lcom/xueqiu/android/community/d;->h:Lcom/xueqiu/android/base/b/ap;

    .line 144
    iput-object v1, p0, Lcom/xueqiu/android/community/d;->ak:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    .line 150
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/d;I)I
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lcom/xueqiu/android/community/d;->b:I

    return p1
.end method

.method private a(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 326
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 327
    iget v1, p0, Lcom/xueqiu/android/community/d;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4062
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, p1, p2}, Lcom/xueqiu/android/base/b/an;->b(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 335
    :goto_0
    return-object v0

    .line 329
    :cond_0
    iget v1, p0, Lcom/xueqiu/android/community/d;->b:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 330
    iget-object v1, p0, Lcom/xueqiu/android/community/d;->a:Lcom/xueqiu/android/common/r;

    .line 4367
    iget-object v1, v1, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 330
    invoke-virtual {v1}, Lcom/xueqiu/android/common/a/d;->getCount()I

    move-result v1

    .line 5097
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, v1, p2}, Lcom/xueqiu/android/base/b/an;->c(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    goto :goto_0

    .line 332
    :cond_1
    iget v1, p0, Lcom/xueqiu/android/community/d;->b:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 333
    const-string v1, "unfollowing"

    invoke-virtual {v0, p1, v1, p2}, Lcom/xueqiu/android/base/b/ai;->a(ILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    goto :goto_0

    .line 335
    :cond_2
    iget v1, p0, Lcom/xueqiu/android/community/d;->b:I

    .line 6084
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, v1, p1, p2}, Lcom/xueqiu/android/base/b/an;->a(IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/d;)V
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 9544
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/d;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9545
    const-string v1, "\u8f93\u5165\u96ea\u7403\u767b\u5f55\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 9547
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/d;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 9548
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 9552
    invoke-virtual {p0}, Lcom/xueqiu/android/community/d;->h()Landroid/content/res/Resources;

    move-result-object v3

    .line 9553
    const v4, 0x7f08004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f08004c

    .line 9554
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f08004b

    .line 9555
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v6, 0x0

    .line 9553
    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 9557
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9559
    new-instance v3, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/d;->g()Landroid/support/v4/a/k;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 9560
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9561
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 9562
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 9564
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 9566
    new-instance v1, Lcom/xueqiu/android/community/d$10;

    invoke-direct {v1, p0, v3}, Lcom/xueqiu/android/community/d$10;-><init>(Lcom/xueqiu/android/community/d;Landroid/widget/EditText;)V

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 9576
    const v1, 0x7f0700b1

    new-instance v2, Lcom/xueqiu/android/community/d$11;

    invoke-direct {v2, p0, v3}, Lcom/xueqiu/android/community/d$11;-><init>(Lcom/xueqiu/android/community/d;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9583
    const v1, 0x7f070070

    new-instance v2, Lcom/xueqiu/android/community/d$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/d$2;-><init>(Lcom/xueqiu/android/community/d;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9589
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 131
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/d;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 10593
    const-string v2, "sina"

    .line 10594
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->h:Lcom/xueqiu/android/base/b/ap;

    .line 11126
    iget-object v6, v0, Lcom/xueqiu/android/base/b/ap;->b:Ljava/lang/String;

    .line 10595
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->h:Lcom/xueqiu/android/base/b/ap;

    .line 12122
    iget-object v3, v0, Lcom/xueqiu/android/base/b/ap;->c:Ljava/lang/String;

    .line 10596
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->h:Lcom/xueqiu/android/base/b/ap;

    .line 13118
    iget-wide v4, v0, Lcom/xueqiu/android/base/b/ap;->d:J

    .line 10597
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->h:Lcom/xueqiu/android/base/b/ap;

    .line 13130
    iget-object v7, v0, Lcom/xueqiu/android/base/b/ap;->e:Ljava/lang/String;

    .line 10598
    new-instance v8, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v8}, Lcom/xueqiu/android/base/b/t;-><init>()V

    .line 10599
    invoke-virtual {p0}, Lcom/xueqiu/android/community/d;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    invoke-static {p1}, Lcom/xueqiu/android/base/util/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v8}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 10600
    invoke-virtual {v8, p0}, Lcom/xueqiu/android/base/b/t;->a(Landroid/support/v4/a/i;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/d$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/d$3;-><init>(Lcom/xueqiu/android/community/d;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 131
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/community/d;I)I
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lcom/xueqiu/android/community/d;->c:I

    return p1
.end method

.method static synthetic b(Lcom/xueqiu/android/community/d;)Lcom/xueqiu/android/common/r;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->a:Lcom/xueqiu/android/common/r;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/d;I)I
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lcom/xueqiu/android/community/d;->g:I

    return p1
.end method

.method static synthetic c(Lcom/xueqiu/android/community/d;)Lcom/xueqiu/android/community/e;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->f:Lcom/xueqiu/android/community/e;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/community/d;)I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/xueqiu/android/community/d;->b:I

    return v0
.end method

.method static synthetic e(Lcom/xueqiu/android/community/d;)I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/xueqiu/android/community/d;->c:I

    return v0
.end method

.method static synthetic f(Lcom/xueqiu/android/community/d;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->e:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/community/d;)V
    .locals 2

    .prologue
    .line 131
    .line 10455
    invoke-virtual {p0}, Lcom/xueqiu/android/community/d;->y()Landroid/app/Dialog;

    .line 10456
    invoke-virtual {p0}, Lcom/xueqiu/android/community/d;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/d$8;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/community/d$8;-><init>(Lcom/xueqiu/android/community/d;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/ai;->c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 131
    return-void
.end method

.method static synthetic h(Lcom/xueqiu/android/community/d;)Landroid/view/View;
    .locals 1

    .prologue
    .line 131
    const v0, 0x7f0e01d7

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/d;->c(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/community/d;)Landroid/view/View;
    .locals 1

    .prologue
    .line 131
    const v0, 0x7f0e016d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/d;->c(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/xueqiu/android/community/d;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->d:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic k(Lcom/xueqiu/android/community/d;)V
    .locals 3

    .prologue
    .line 131
    .line 10498
    iget v0, p0, Lcom/xueqiu/android/community/d;->g:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xueqiu/android/community/d;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 10501
    :cond_0
    const v0, 0x7f0e01d7

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/d;->c(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10502
    const v0, 0x7f0e016d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/d;->c(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10504
    const v0, 0x7f0e01d8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/d;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 10505
    const v1, 0x7f0e01d9

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/d;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 10506
    iget v2, p0, Lcom/xueqiu/android/community/d;->g:I

    if-nez v2, :cond_1

    .line 10507
    const-string v2, "\u4f60\u672a\u7ed1\u5b9a\u65b0\u6d6a\u5fae\u535a\uff0c\u7cfb\u7edf\u65e0\u6cd5\u4e3a\u4f60\u627e\u5230\u52a0\u5165\u96ea\u7403\u7684\u65b0\u6d6a\u5fae\u535a\u597d\u53cb\uff0c\u73b0\u5728\u53bb\u7ed1\u5b9a\uff1f"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10508
    const-string v0, "\u597d\u5440\uff0c\u7ed1\u5b9a\u770b\u770b"

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 10513
    :goto_0
    new-instance v0, Lcom/xueqiu/android/community/d$9;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/d$9;-><init>(Lcom/xueqiu/android/community/d;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10522
    :goto_1
    return-void

    .line 10510
    :cond_1
    const-string v2, "\u6388\u6743\u8fc7\u671f\uff0c\u9700\u8981\u91cd\u65b0\u6388\u6743"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10511
    const-string v0, "\u91cd\u65b0\u6388\u6743"

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10524
    :cond_2
    invoke-direct {p0}, Lcom/xueqiu/android/community/d;->u()V

    goto :goto_1
.end method

.method static synthetic l(Lcom/xueqiu/android/community/d;)Lcom/xueqiu/android/base/b/ap;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->h:Lcom/xueqiu/android/base/b/ap;

    return-object v0
.end method

.method static synthetic m(Lcom/xueqiu/android/community/d;)Landroid/view/View;
    .locals 1

    .prologue
    .line 131
    const v0, 0x7f0e01d7

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/d;->c(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n(Lcom/xueqiu/android/community/d;)Landroid/view/View;
    .locals 1

    .prologue
    .line 131
    const v0, 0x7f0e016d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/d;->c(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o(Lcom/xueqiu/android/community/d;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/xueqiu/android/community/d;->u()V

    return-void
.end method

.method private u()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 529
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->a:Lcom/xueqiu/android/common/r;

    .line 6367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 529
    check-cast v0, Lcom/xueqiu/android/community/a/ba;

    .line 7304
    iput-boolean v1, v0, Lcom/xueqiu/android/community/a/ba;->f:Z

    .line 7367
    iput-object v2, v0, Lcom/xueqiu/android/community/a/ba;->g:Lcom/xueqiu/android/common/a/e;

    .line 532
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->a:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->c(Z)V

    .line 533
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->d:Landroid/util/SparseArray;

    iget v1, p0, Lcom/xueqiu/android/community/d;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 534
    iget-object v1, p0, Lcom/xueqiu/android/community/d;->a:Lcom/xueqiu/android/common/r;

    iget-object v0, p0, Lcom/xueqiu/android/community/d;->d:Landroid/util/SparseArray;

    iget v2, p0, Lcom/xueqiu/android/community/d;->b:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/r;->a(Ljava/util/ArrayList;)V

    .line 541
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->a:Lcom/xueqiu/android/common/r;

    .line 8367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 536
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/a/d;->a(Ljava/util/ArrayList;)V

    .line 537
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->a:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->a()Z

    .line 538
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->a:Lcom/xueqiu/android/common/r;

    .line 9225
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Z)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 184
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 185
    const-string v0, "\u6dfb\u52a0\u7403\u53cb"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/d;->a(Ljava/lang/CharSequence;)V

    .line 186
    const v0, 0x7f030070

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 443
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/d;->c:I

    .line 444
    iget v0, p0, Lcom/xueqiu/android/community/d;->c:I

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/community/d;->a(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Lcom/xueqiu/android/community/d;->g()Landroid/support/v4/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/xueqiu/android/community/d;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/FindPeopleActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/FindPeopleActivity;->b(Lcom/xueqiu/android/community/FindPeopleActivity;)Lcom/xueqiu/android/base/b/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/d;->h:Lcom/xueqiu/android/base/b/ap;

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/d;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sina.weibo"

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/widget/aj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/xueqiu/android/community/d;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const-string v1, "669111051"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/api/share/WeiboShareSDK;->createWeiboAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/d;->ak:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    .line 161
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->ak:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->registerApp()Z

    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->ak:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/d;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/k;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/d$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/d$1;-><init>(Lcom/xueqiu/android/community/d;)V

    invoke-interface {v0, v1, v2}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->handleWeiboResponse(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;)Z

    .line 179
    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 191
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2197
    const v0, 0x7f0e01f0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/d;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/d;->al:Landroid/widget/LinearLayout;

    .line 2198
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->al:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/xueqiu/android/community/d$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/d$4;-><init>(Lcom/xueqiu/android/community/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2206
    new-instance v1, Lcom/xueqiu/android/community/a/ba;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/d;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const v2, 0x7f030078

    invoke-direct {v1, v0, v2}, Lcom/xueqiu/android/community/a/ba;-><init>(Landroid/app/Activity;I)V

    .line 2207
    const v0, 0x7f0e016d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/d;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 2208
    new-instance v2, Lcom/xueqiu/android/common/r;

    invoke-direct {v2, v0, p0}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v2, p0, Lcom/xueqiu/android/community/d;->a:Lcom/xueqiu/android/common/r;

    .line 2209
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->a:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 2211
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->a:Lcom/xueqiu/android/common/r;

    new-instance v1, Lcom/xueqiu/android/community/d$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/d$5;-><init>(Lcom/xueqiu/android/community/d;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2221
    const v0, 0x7f0e01f1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/d;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 2222
    new-instance v1, Lcom/xueqiu/android/community/e;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/d;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/xueqiu/android/community/e;-><init>(Lcom/xueqiu/android/community/d;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/d;->f:Lcom/xueqiu/android/community/e;

    .line 2223
    iget-object v1, p0, Lcom/xueqiu/android/community/d;->f:Lcom/xueqiu/android/community/e;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2226
    new-instance v2, Lcom/xueqiu/android/community/model/IndustryOfUser;

    invoke-direct {v2}, Lcom/xueqiu/android/community/model/IndustryOfUser;-><init>()V

    .line 2227
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/community/model/IndustryOfUser;->setId(I)V

    .line 2228
    const v3, 0x7f07057e

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/community/d;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/community/model/IndustryOfUser;->setName(Ljava/lang/String;)V

    .line 2229
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2245
    iget-object v2, p0, Lcom/xueqiu/android/community/d;->f:Lcom/xueqiu/android/community/e;

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/community/e;->a(Ljava/util/ArrayList;)V

    .line 2247
    new-instance v1, Lcom/xueqiu/android/community/d$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/d$6;-><init>(Lcom/xueqiu/android/community/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2306
    invoke-virtual {p0}, Lcom/xueqiu/android/community/d;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/d$7;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/community/d$7;-><init>(Lcom/xueqiu/android/community/d;Lcom/xueqiu/android/base/b/q;)V

    .line 3161
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/an;->b(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 2319
    invoke-virtual {p0}, Lcom/xueqiu/android/community/d;->g()Landroid/support/v4/a/k;

    move-result-object v0

    instance-of v0, v0, Lcom/xueqiu/android/community/FindPeopleActivity;

    if-eqz v0, :cond_0

    .line 2320
    invoke-virtual {p0}, Lcom/xueqiu/android/community/d;->y()Landroid/app/Dialog;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->a:Lcom/xueqiu/android/common/r;

    .line 3225
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 194
    return-void
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/xueqiu/android/community/d;->g()Landroid/support/v4/a/k;

    move-result-object v0

    if-nez v0, :cond_0

    .line 379
    :goto_0
    return-void

    .line 345
    :cond_0
    if-nez p1, :cond_4

    .line 346
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 347
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 352
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-nez p3, :cond_1

    .line 353
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->a:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->c()V

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->d:Landroid/util/SparseArray;

    iget v1, p0, Lcom/xueqiu/android/community/d;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_6

    .line 358
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->d:Landroid/util/SparseArray;

    iget v1, p0, Lcom/xueqiu/android/community/d;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 361
    iget v1, p0, Lcom/xueqiu/android/community/d;->b:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_5

    .line 362
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 363
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 364
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/User;

    .line 365
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/community/model/User;

    .line 366
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 367
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 348
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    goto :goto_1

    .line 374
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 376
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 377
    iget-object v1, p0, Lcom/xueqiu/android/community/d;->d:Landroid/util/SparseArray;

    iget v2, p0, Lcom/xueqiu/android/community/d;->b:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/IndustryOfUser;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 386
    .line 6240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 386
    if-nez v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/d;->z()V

    .line 390
    if-nez p1, :cond_1

    .line 391
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->f:Lcom/xueqiu/android/community/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/e;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 396
    iget-object v0, p0, Lcom/xueqiu/android/community/d;->f:Lcom/xueqiu/android/community/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/e;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 449
    iget v0, p0, Lcom/xueqiu/android/community/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/d;->c:I

    .line 450
    iget v0, p0, Lcom/xueqiu/android/community/d;->c:I

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/community/d;->a(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method
