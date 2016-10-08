.class public final Lcom/xueqiu/android/trade/c/e;
.super Lcom/xueqiu/android/base/k;
.source "OrderFragment.java"

# interfaces
.implements Lcom/xueqiu/android/trade/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/k",
        "<",
        "Lcom/xueqiu/android/trade/b/b;",
        ">;",
        "Lcom/xueqiu/android/trade/b/c;"
    }
.end annotation


# instance fields
.field private aA:Landroid/widget/TextView;

.field private aB:Landroid/widget/TextView;

.field private aC:Landroid/widget/TextView;

.field private aD:Landroid/widget/TextView;

.field private aE:Landroid/widget/RelativeLayout;

.field private aF:Landroid/widget/RelativeLayout;

.field private aG:Landroid/widget/TextView;

.field private aH:Landroid/widget/TextView;

.field private aI:Landroid/widget/TextView;

.field private aJ:Landroid/widget/TextView;

.field private aK:Landroid/widget/TextView;

.field private aL:Landroid/widget/TextView;

.field private aM:Landroid/widget/LinearLayout;

.field private aN:Landroid/widget/TextView;

.field private aO:Landroid/widget/TextView;

.field private aP:Landroid/widget/ImageView;

.field private aQ:Landroid/widget/ImageView;

.field private aR:Landroid/widget/RelativeLayout;

.field private aS:Landroid/widget/ImageView;

.field private aT:Landroid/widget/TextView;

.field private aU:Landroid/widget/ImageView;

.field private aV:Landroid/view/View;

.field private aW:Z

.field private aX:Lcom/xueqiu/android/common/widget/p;

.field private aY:Lcom/xueqiu/android/common/x;

.field private aZ:Lcom/xueqiu/android/common/x;

.field public ak:Lcom/xueqiu/android/trade/a;

.field public al:Lcom/xueqiu/android/trade/c/f;

.field public am:J

.field public an:Ljava/lang/String;

.field ao:Landroid/view/View$OnClickListener;

.field ap:Landroid/view/View$OnClickListener;

.field private aq:Landroid/widget/LinearLayout;

.field private ar:Landroid/widget/LinearLayout;

.field private as:Landroid/widget/EditText;

.field private at:Landroid/widget/EditText;

.field private au:Landroid/widget/LinearLayout;

.field private av:Landroid/widget/TextView;

.field private aw:Landroid/widget/ImageButton;

.field private ax:Landroid/widget/ImageButton;

.field private ay:Landroid/widget/ImageButton;

.field private az:Landroid/widget/ImageButton;

.field public b:Ljava/lang/String;

.field private ba:Landroid/view/animation/Animation;

.field private bb:I

.field private bc:D

.field private bd:D

.field private be:Landroid/widget/PopupWindow;

.field private bf:Lcom/xueqiu/android/common/widget/f;

.field private bg:Landroid/view/animation/Animation;

.field private bh:Landroid/view/animation/Animation;

.field private bi:Z

.field private bj:Z

.field private bk:Landroid/view/View;

.field private bl:Z

.field private bm:Landroid/view/View$OnClickListener;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/xueqiu/android/base/k;-><init>()V

    .line 76
    const-string v0, "BUY"

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->b:Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->aW:Z

    .line 129
    iput-object v1, p0, Lcom/xueqiu/android/trade/c/e;->ak:Lcom/xueqiu/android/trade/a;

    .line 130
    iput-object v1, p0, Lcom/xueqiu/android/trade/c/e;->al:Lcom/xueqiu/android/trade/c/f;

    .line 473
    new-instance v0, Lcom/xueqiu/android/trade/c/e$13;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/c/e$13;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->ao:Landroid/view/View$OnClickListener;

    .line 518
    new-instance v0, Lcom/xueqiu/android/trade/c/e$14;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/c/e$14;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->ap:Landroid/view/View$OnClickListener;

    .line 577
    new-instance v0, Lcom/xueqiu/android/trade/c/e$15;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/c/e$15;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->bm:Landroid/view/View$OnClickListener;

    .line 1658
    return-void
.end method

.method static synthetic A(Lcom/xueqiu/android/trade/c/e;)V
    .locals 4

    .prologue
    .line 57
    .line 16730
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->aW:Z

    if-eqz v0, :cond_0

    .line 17053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 16731
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x5e1

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 16735
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aX:Lcom/xueqiu/android/common/widget/p;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/e;->at:Landroid/widget/EditText;

    new-instance v3, Lcom/xueqiu/android/trade/c/e$19;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/trade/c/e$19;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/common/widget/p;->a(ILandroid/widget/EditText;Lcom/xueqiu/android/common/widget/r;)V

    .line 57
    return-void

    .line 18053
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 16733
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x5ed

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method

.method static synthetic B(Lcom/xueqiu/android/trade/c/e;)V
    .locals 4

    .prologue
    .line 57
    .line 18774
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->aW:Z

    if-nez v0, :cond_0

    .line 19053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 18775
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x5ed

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 18777
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aX:Lcom/xueqiu/android/common/widget/p;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    new-instance v3, Lcom/xueqiu/android/trade/c/e$20;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/trade/c/e$20;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/common/widget/p;->a(ILandroid/widget/EditText;Lcom/xueqiu/android/common/widget/r;)V

    .line 57
    return-void
.end method

.method static synthetic C(Lcom/xueqiu/android/trade/c/e;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/xueqiu/android/trade/c/e;->bb:I

    return v0
.end method

.method static synthetic D(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method private D()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 588
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aA:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 589
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aB:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 590
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aC:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 591
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aD:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 592
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/b;->i()V

    .line 595
    :cond_0
    return-void
.end method

.method static synthetic E(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method private E()V
    .locals 7

    .prologue
    const v6, 0x7f01002d

    const/4 v5, 0x0

    const v4, 0x7f01002f

    const v3, 0x7f0d001a

    const/4 v2, 0x1

    .line 796
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aq:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/xueqiu/android/base/r;->b(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 797
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->ar:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/xueqiu/android/base/r;->b(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 799
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aA:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 800
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aB:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 801
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aC:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 802
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aD:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 803
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aA:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 804
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aB:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 805
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aC:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 806
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aD:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 807
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aA:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xueqiu/android/base/r;->b(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 808
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aB:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xueqiu/android/base/r;->b(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 809
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aC:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xueqiu/android/base/r;->b(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 810
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aD:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xueqiu/android/base/r;->b(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 812
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aw:Landroid/widget/ImageButton;

    const v1, 0x7f020355

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 813
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->ax:Landroid/widget/ImageButton;

    const v1, 0x7f020358

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 815
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->ay:Landroid/widget/ImageButton;

    const v1, 0x7f020355

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 816
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->az:Landroid/widget/ImageButton;

    const v1, 0x7f020358

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 817
    iget v0, p0, Lcom/xueqiu/android/trade/c/e;->bb:I

    if-eq v0, v2, :cond_0

    .line 818
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aJ:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 819
    iput v5, p0, Lcom/xueqiu/android/trade/c/e;->bb:I

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aJ:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 822
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aE:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 823
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aE:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 825
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aR:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 826
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aT:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    const-string v1, "LMT"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 829
    return-void
.end method

.method static synthetic F(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method private F()V
    .locals 7

    .prologue
    const v6, 0x7f01002e

    const/4 v5, 0x0

    const v4, 0x7f01002f

    const v3, 0x7f0d00c1

    const/4 v2, 0x1

    .line 832
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aq:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/xueqiu/android/base/r;->b(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 833
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->ar:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/xueqiu/android/base/r;->b(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 835
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aA:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 836
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aB:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 837
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aC:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 838
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aD:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 839
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aA:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 840
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aB:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 841
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aC:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 842
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aD:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 843
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aA:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xueqiu/android/base/r;->b(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 844
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aB:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xueqiu/android/base/r;->b(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 845
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aC:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xueqiu/android/base/r;->b(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 846
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aD:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xueqiu/android/base/r;->b(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 848
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aw:Landroid/widget/ImageButton;

    const v1, 0x7f020357

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 849
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->ax:Landroid/widget/ImageButton;

    const v1, 0x7f02035b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 851
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->ay:Landroid/widget/ImageButton;

    const v1, 0x7f020357

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 852
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->az:Landroid/widget/ImageButton;

    const v1, 0x7f02035b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 853
    iget v0, p0, Lcom/xueqiu/android/trade/c/e;->bb:I

    if-eq v0, v2, :cond_0

    .line 854
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aJ:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    iput v5, p0, Lcom/xueqiu/android/trade/c/e;->bb:I

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aJ:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 858
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aE:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 859
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aE:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 861
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aR:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aT:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    const-string v1, "LMT"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 865
    return-void
.end method

.method static synthetic G(Lcom/xueqiu/android/trade/c/e;)I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/trade/c/e;->bb:I

    return v0
.end method

.method private G()V
    .locals 3

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/e;->E()V

    .line 869
    iget v0, p0, Lcom/xueqiu/android/trade/c/e;->bb:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 870
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aJ:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/trade/c/e;->bb:I

    .line 873
    :cond_0
    return-void
.end method

.method static synthetic H(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aR:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private H()V
    .locals 4

    .prologue
    const v2, 0x7f010047

    const/4 v3, 0x0

    .line 876
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/e;->F()V

    .line 877
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aA:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xueqiu/android/base/r;->a(ILandroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 878
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aB:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xueqiu/android/base/r;->a(ILandroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 879
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aC:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xueqiu/android/base/r;->a(ILandroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 880
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aD:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xueqiu/android/base/r;->a(ILandroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 881
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aA:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 882
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aB:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 883
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aC:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 884
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aD:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 885
    iget v0, p0, Lcom/xueqiu/android/trade/c/e;->bb:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 886
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aJ:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 887
    iput v3, p0, Lcom/xueqiu/android/trade/c/e;->bb:I

    .line 889
    :cond_0
    return-void
.end method

.method static synthetic I(Lcom/xueqiu/android/trade/c/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method private I()V
    .locals 4

    .prologue
    const v3, 0x7f0e04f0

    const/4 v2, 0x0

    .line 892
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e04e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 893
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e04e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 895
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e04ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/c/e$21;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$21;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 905
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 906
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/c/e$22;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$22;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 916
    return-void
.end method

.method static synthetic J(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aJ:Landroid/widget/TextView;

    return-object v0
.end method

.method private J()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1202
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1203
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->b:Ljava/lang/String;

    const-string v1, "BUY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/e;->E()V

    .line 1205
    iput-boolean v2, p0, Lcom/xueqiu/android/trade/c/e;->bj:Z

    .line 1208
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->b:Ljava/lang/String;

    const-string v1, "SELL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1209
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/e;->F()V

    .line 1210
    iput-boolean v2, p0, Lcom/xueqiu/android/trade/c/e;->bj:Z

    .line 1213
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->b:Ljava/lang/String;

    const-string v1, "BUY_COVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1214
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/e;->G()V

    .line 1215
    iput-boolean v2, p0, Lcom/xueqiu/android/trade/c/e;->bj:Z

    .line 1218
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->b:Ljava/lang/String;

    const-string v1, "SELL_SHORT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1219
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/e;->H()V

    .line 1220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->bj:Z

    .line 1223
    :cond_3
    return-void
.end method

.method static synthetic K(Lcom/xueqiu/android/trade/c/e;)Landroid/view/View;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    return-object v0
.end method

.method static synthetic L(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic M(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic N(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic O(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic P(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic Q(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->be:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic R(Lcom/xueqiu/android/trade/c/e;)V
    .locals 5

    .prologue
    const v4, 0x7f0e04f1

    const/4 v3, 0x0

    .line 57
    .line 19713
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->aW:Z

    if-eqz v0, :cond_1

    .line 19714
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->aX:Lcom/xueqiu/android/common/widget/p;

    .line 20160
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    .line 19715
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->bg:Landroid/view/animation/Animation;

    .line 19716
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->bg:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 19717
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 19718
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->aX:Lcom/xueqiu/android/common/widget/p;

    .line 21160
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    .line 19718
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 19719
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19720
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 19721
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->bg:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 19722
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->al:Lcom/xueqiu/android/trade/c/f;

    if-eqz v0, :cond_0

    .line 19723
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 19724
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 19725
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->al:Lcom/xueqiu/android/trade/c/f;

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-interface {v1, v0}, Lcom/xueqiu/android/trade/c/f;->b(I)V

    goto :goto_0
.end method

.method static synthetic S(Lcom/xueqiu/android/trade/c/e;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 57
    .line 21680
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->aW:Z

    if-eqz v0, :cond_0

    .line 21683
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->aX:Lcom/xueqiu/android/common/widget/p;

    .line 22160
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    .line 21684
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v3, 0x7f0e04f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v0, v4, v4, v4, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->bh:Landroid/view/animation/Animation;

    .line 21685
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->bh:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 21686
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 21687
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/e;->bh:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 21688
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->bh:Landroid/view/animation/Animation;

    new-instance v2, Lcom/xueqiu/android/trade/c/e$18;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/trade/c/e$18;-><init>(Lcom/xueqiu/android/trade/c/e;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic T(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aE:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic U(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->at:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic V(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic W(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic X(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic Y(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic Z(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/trade/a;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->ak:Lcom/xueqiu/android/trade/a;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/e;)D
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/xueqiu/android/trade/c/e;->bc:D

    return-wide v0
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 1380
    new-instance v0, Lcom/xueqiu/android/trade/c/e$28;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/trade/c/e$28;-><init>(Lcom/xueqiu/android/trade/c/e;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1434
    return-void
.end method

.method static synthetic a(Landroid/widget/LinearLayout;Z)V
    .locals 1

    .prologue
    .line 57
    .line 22598
    if-eqz p1, :cond_0

    .line 22599
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setSelected(Z)V

    :goto_0
    return-void

    .line 22601
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_0
.end method

.method private a(Lcom/xueqiu/android/common/x;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 606
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const v1, 0x7f0701f0

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/trade/c/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10040
    iget-object v0, p1, Lcom/xueqiu/android/common/x;->a:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v2, v0

    .line 10044
    iget-object v0, p1, Lcom/xueqiu/android/common/x;->b:Landroid/media/SoundPool;

    iget v1, p1, Lcom/xueqiu/android/common/x;->c:I

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 609
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/e;Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 57
    .line 16540
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->bk:Landroid/view/View;

    if-nez v0, :cond_0

    .line 16541
    new-instance v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/e;->b(Lcom/xueqiu/android/trade/model/TradeAccount;)V

    .line 16543
    :cond_0
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->bk:Landroid/view/View;

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->be:Landroid/widget/PopupWindow;

    .line 16544
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->be:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020460

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16545
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->be:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 16546
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->be:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/e;Lcom/xueqiu/android/common/x;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/c/e;->a(Lcom/xueqiu/android/common/x;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/c/e;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(ZZ)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 1264
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->aW:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->ak:Lcom/xueqiu/android/trade/a;

    if-eqz v0, :cond_1

    .line 1265
    iget-wide v0, p0, Lcom/xueqiu/android/trade/c/e;->am:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 1266
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x5e1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1267
    const-string v1, "cost_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xueqiu/android/trade/c/e;->am:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 14053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 1268
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 1269
    iput-wide v6, p0, Lcom/xueqiu/android/trade/c/e;->am:J

    .line 1271
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->ak:Lcom/xueqiu/android/trade/a;

    invoke-interface {v0, p1, p2}, Lcom/xueqiu/android/trade/a;->a(ZZ)V

    .line 1273
    :cond_1
    return-void
.end method

.method static synthetic aa(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic ab(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aq:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic ac(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic ad(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic ae(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->ar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic af(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic ag(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic ah(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic ai(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic aj(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->av:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic ak(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic al(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aG:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic am(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic an(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic ao(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic ap(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/common/x;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aY:Lcom/xueqiu/android/common/x;

    return-object v0
.end method

.method public static g(Landroid/os/Bundle;)Lcom/xueqiu/android/trade/c/e;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/xueqiu/android/trade/c/e;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/c/e;-><init>()V

    .line 167
    invoke-virtual {v0, p0}, Lcom/xueqiu/android/trade/c/e;->e(Landroid/os/Bundle;)V

    .line 169
    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/trade/c/e;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->aW:Z

    return v0
.end method

.method static synthetic j(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic k(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic l(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic m(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic n(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic o(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic p(Lcom/xueqiu/android/trade/c/e;)V
    .locals 5

    .prologue
    const/high16 v4, 0x41a00000    # 20.0f

    .line 57
    .line 16612
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const v1, 0x7f03018d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 16613
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16614
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 16615
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 16616
    invoke-static {v4}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 16617
    invoke-static {v4}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 16618
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16619
    const v0, 0x7f0e06f7

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/e;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v3, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u8ba1\u7b97"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 16621
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    new-instance v3, Lcom/xueqiu/android/trade/c/e$16;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/trade/c/e$16;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-static {v0, v3}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 16625
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/f;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 16626
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/view/View;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 16627
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->a()Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 16628
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->a(Z)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->bf:Lcom/xueqiu/android/common/widget/f;

    .line 16629
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->bf:Lcom/xueqiu/android/common/widget/f;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    .line 57
    return-void
.end method

.method static synthetic q(Lcom/xueqiu/android/trade/c/e;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->bj:Z

    return v0
.end method

.method static synthetic r(Lcom/xueqiu/android/trade/c/e;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/e;->D()V

    return-void
.end method

.method static synthetic s(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic t(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aA:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic u(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic v(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aB:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic w(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic x(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aC:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic y(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic z(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aD:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final C()V
    .locals 2

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    if-eqz v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/b;->d()V

    .line 1616
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->e(Ljava/lang/String;)V

    .line 1618
    :cond_0
    return-void
.end method

.method public final G_()V
    .locals 3

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aN:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0\u53ef\u7528\u5238\u5546"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1228
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aJ:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07045d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1229
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aJ:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1230
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/trade/c/e;->bb:I

    .line 1231
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aO:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1232
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aQ:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1233
    return-void
.end method

.method public final H_()V
    .locals 3

    .prologue
    .line 1237
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->aW:Z

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aR:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1239
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aT:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1240
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aS:Landroid/widget/ImageView;

    const v1, 0x7f02027a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1241
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aS:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->ba:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1245
    :goto_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/xueqiu/android/trade/c/e;->bb:I

    .line 1246
    return-void

    .line 1243
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->y()Landroid/app/Dialog;

    goto :goto_0
.end method

.method public final I_()V
    .locals 4

    .prologue
    .line 1277
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/e;->I()V

    .line 1278
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->aW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->ak:Lcom/xueqiu/android/trade/a;

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->ak:Lcom/xueqiu/android/trade/a;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/a;->a()V

    .line 15053
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 1281
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x5e1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 1282
    return-void
.end method

.method public final J_()D
    .locals 2

    .prologue
    .line 1602
    iget-wide v0, p0, Lcom/xueqiu/android/trade/c/e;->bc:D

    return-wide v0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    const v0, 0x7f030144

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    .line 220
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e04eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aM:Landroid/widget/LinearLayout;

    .line 221
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e04ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aP:Landroid/widget/ImageView;

    .line 222
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e04ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aN:Landroid/widget/TextView;

    .line 223
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e04ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aO:Landroid/widget/TextView;

    .line 224
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e04ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aQ:Landroid/widget/ImageView;

    .line 226
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->d:Landroid/widget/TextView;

    .line 227
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->e:Landroid/widget/TextView;

    .line 228
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->f:Landroid/widget/TextView;

    .line 229
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->g:Landroid/widget/TextView;

    .line 230
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->h:Landroid/widget/TextView;

    .line 232
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    .line 233
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->at:Landroid/widget/EditText;

    .line 235
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aq:Landroid/widget/LinearLayout;

    .line 236
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->ar:Landroid/widget/LinearLayout;

    .line 238
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    .line 239
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->au:Landroid/widget/LinearLayout;

    .line 240
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aw:Landroid/widget/ImageButton;

    .line 241
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->ax:Landroid/widget/ImageButton;

    .line 243
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->av:Landroid/widget/TextView;

    .line 244
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->ay:Landroid/widget/ImageButton;

    .line 245
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->az:Landroid/widget/ImageButton;

    .line 247
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aA:Landroid/widget/TextView;

    .line 248
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aB:Landroid/widget/TextView;

    .line 249
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aC:Landroid/widget/TextView;

    .line 250
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aD:Landroid/widget/TextView;

    .line 252
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aG:Landroid/widget/TextView;

    .line 253
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aH:Landroid/widget/TextView;

    .line 254
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aI:Landroid/widget/TextView;

    .line 255
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aU:Landroid/widget/ImageView;

    .line 256
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aK:Landroid/widget/TextView;

    .line 257
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aL:Landroid/widget/TextView;

    .line 259
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e04f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aE:Landroid/widget/RelativeLayout;

    .line 260
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e04f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aF:Landroid/widget/RelativeLayout;

    .line 261
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aE:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 262
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e04f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aJ:Landroid/widget/TextView;

    .line 263
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aJ:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aJ:Landroid/widget/TextView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 266
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aR:Landroid/widget/RelativeLayout;

    .line 267
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aS:Landroid/widget/ImageView;

    .line 268
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aT:Landroid/widget/TextView;

    .line 270
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/e;->J()V

    .line 272
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->aW:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/e;->I()V

    .line 4666
    :cond_0
    new-instance v0, Lcom/xueqiu/android/common/widget/p;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/widget/p;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aX:Lcom/xueqiu/android/common/widget/p;

    .line 4667
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aX:Lcom/xueqiu/android/common/widget/p;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$17;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$17;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    .line 5239
    iput-object v1, v0, Lcom/xueqiu/android/common/widget/p;->i:Lcom/xueqiu/android/common/widget/q;

    .line 5296
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$1;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5303
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$12;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$12;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5310
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$23;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$23;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5317
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->au:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$29;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$29;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5324
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aw:Landroid/widget/ImageButton;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$30;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$30;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5336
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->ax:Landroid/widget/ImageButton;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$31;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$31;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5348
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->ay:Landroid/widget/ImageButton;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$32;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$32;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5360
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->az:Landroid/widget/ImageButton;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$33;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$33;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5373
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->aW:Z

    if-eqz v0, :cond_3

    .line 5374
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aE:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->ao:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5379
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aF:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$34;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$34;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5386
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aI:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$2;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5393
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aM:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$3;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5400
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aO:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$4;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5407
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aU:Landroid/widget/ImageView;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$5;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5414
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aA:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$6;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5425
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aB:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$7;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$7;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5436
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aC:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$8;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$8;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5447
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aD:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$9;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$9;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5457
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->at:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$10;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$10;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5463
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$11;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$11;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5469
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/c/e;->a(Landroid/widget/EditText;)V

    .line 5470
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->at:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/c/e;->a(Landroid/widget/EditText;)V

    .line 279
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->aW:Z

    if-nez v0, :cond_2

    .line 6564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 6286
    const-string v1, "arg_price"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6287
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    .line 7564
    iget-object v1, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 6287
    const-string v2, "arg_price"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->bl:Z

    .line 8564
    :cond_1
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 6290
    const-string v1, "arg_amount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6291
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->at:Landroid/widget/EditText;

    .line 9564
    iget-object v1, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 6291
    const-string v2, "arg_amount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    return-object v0

    .line 5376
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aE:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->ap:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(DZ)V
    .locals 3

    .prologue
    const v1, 0x7f0e06f1

    .line 1025
    if-eqz p3, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u53c2\u8003\u91d1\u989d\uff1a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aG:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/xueqiu/android/base/util/au;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    return-void

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u8ba2\u5355\u91d1\u989d\uff1a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 7

    .prologue
    const v6, 0x7f0704b0

    const v5, 0x7f0703d3

    const/16 v2, 0x11

    const v4, 0x7f0e04f0

    const/4 v3, 0x4

    .line 1053
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->aW:Z

    if-eqz v0, :cond_2

    .line 11119
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aS:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 11120
    iput p1, p0, Lcom/xueqiu/android/trade/c/e;->bb:I

    .line 11121
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->f()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040020

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 11122
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 11123
    packed-switch p1, :pswitch_data_0

    .line 12104
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 11125
    :pswitch_1
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->aZ:Lcom/xueqiu/android/common/x;

    invoke-direct {p0, v1}, Lcom/xueqiu/android/trade/c/e;->a(Lcom/xueqiu/android/common/x;)V

    .line 11126
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->aF:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11127
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->aS:Landroid/widget/ImageView;

    const v2, 0x7f02027b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 11128
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->aS:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 11129
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aT:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11130
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aJ:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11131
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 11135
    :pswitch_2
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->aS:Landroid/widget/ImageView;

    const v2, 0x7f02027c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 11136
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->aS:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 11137
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aT:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11138
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aJ:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11139
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 11142
    :pswitch_3
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->aS:Landroid/widget/ImageView;

    const v2, 0x7f020279

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 11143
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->aS:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 11144
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11145
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aT:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11149
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aJ:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11150
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 11147
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aT:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 11153
    :pswitch_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aR:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 11154
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aR:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 12061
    :cond_2
    iput p1, p0, Lcom/xueqiu/android/trade/c/e;->bb:I

    .line 12062
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->z()V

    .line 12063
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 12065
    :pswitch_5
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$26;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$26;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    const-string v1, "\u59d4\u6258\u5355\u5df2\u63d0\u4ea4"

    .line 12081
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    .line 12082
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->d(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    const-string v1, "\u5206\u4eab"

    .line 12083
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->c(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 12084
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    goto/16 :goto_0

    .line 12087
    :pswitch_6
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 12088
    :cond_3
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 12090
    :cond_4
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$27;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$27;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    const-string v1, "\u59d4\u6258\u5355\u72b6\u6001\u672a\u77e5"

    .line 12099
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 12100
    invoke-virtual {v0, p2}, Lcom/xueqiu/android/common/widget/f;->b(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 12127
    iput v2, v0, Lcom/xueqiu/android/common/widget/f;->g:I

    .line 12101
    const-string v1, "\u786e\u5b9a"

    .line 12102
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->c(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 12103
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    goto/16 :goto_0

    .line 12106
    :pswitch_7
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    const-string v1, "\u59d4\u6258\u5355\u63d0\u4ea4\u5931\u8d25"

    .line 12107
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 12108
    invoke-virtual {v0, p2}, Lcom/xueqiu/android/common/widget/f;->b(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 13127
    iput v2, v0, Lcom/xueqiu/android/common/widget/f;->g:I

    .line 12109
    const-string v1, "\u786e\u5b9a"

    .line 12110
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->c(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 12111
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    goto/16 :goto_0

    .line 11123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 12063
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/xueqiu/android/base/k;->a(Landroid/os/Bundle;)V

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 176
    const-string v1, "arg_symbol"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->an:Ljava/lang/String;

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 177
    const-string v1, "arg_is_lite"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->aW:Z

    .line 4564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 178
    const-string v1, "arg_direction"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->b:Ljava/lang/String;

    .line 180
    new-instance v0, Lcom/xueqiu/android/common/x;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const v2, 0x7f060001

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/x;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aY:Lcom/xueqiu/android/common/x;

    .line 181
    new-instance v0, Lcom/xueqiu/android/common/x;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const v2, 0x7f060004

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/x;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aZ:Lcom/xueqiu/android/common/x;

    .line 182
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const v1, 0x7f040011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->ba:Landroid/view/animation/Animation;

    .line 183
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->ba:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 184
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 920
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/base/k;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 921
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->aW:Z

    if-nez v0, :cond_0

    .line 10564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 922
    const-string v1, "arg_tradeaccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 923
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v1, Lcom/xueqiu/android/trade/b/b;

    invoke-interface {v1, v0}, Lcom/xueqiu/android/trade/b/b;->a(Lcom/xueqiu/android/trade/model/TradeAccount;)V

    .line 924
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v1, Lcom/xueqiu/android/trade/b/b;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/e;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/xueqiu/android/trade/b/b;->a(Ljava/lang/String;)V

    .line 925
    if-nez v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aJ:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07045d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 927
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aJ:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 928
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/trade/c/e;->bb:I

    .line 10935
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$24;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$24;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 10947
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->at:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/trade/c/e$25;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/e$25;-><init>(Lcom/xueqiu/android/trade/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 932
    return-void
.end method

.method public final a(Lcom/xueqiu/android/stock/model/StockQuote;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 1438
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1474
    :goto_0
    return-void

    .line 1441
    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getPercentage()D

    move-result-wide v0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_2

    .line 1442
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1448
    :goto_1
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/c/e;->bc:D

    .line 1449
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getTickSize()D

    move-result-wide v0

    cmpl-double v0, v0, v8

    if-eqz v0, :cond_1

    .line 1450
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getTickSize()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/c/e;->bd:D

    .line 1455
    :cond_1
    iget-wide v0, p0, Lcom/xueqiu/android/trade/c/e;->bd:D

    cmpl-double v0, v0, v8

    if-eqz v0, :cond_4

    .line 1456
    iget-wide v0, p0, Lcom/xueqiu/android/trade/c/e;->bd:D

    iget-wide v2, p0, Lcom/xueqiu/android/trade/c/e;->bc:D

    invoke-static {v0, v1, v2, v3}, Lcom/xueqiu/android/base/util/as;->a(DD)Ljava/lang/String;

    move-result-object v2

    .line 1457
    iget-wide v0, p0, Lcom/xueqiu/android/trade/c/e;->bd:D

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getRiseStop()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/xueqiu/android/base/util/as;->a(DD)Ljava/lang/String;

    move-result-object v1

    .line 1458
    iget-wide v4, p0, Lcom/xueqiu/android/trade/c/e;->bd:D

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getFallStop()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/xueqiu/android/base/util/as;->a(DD)Ljava/lang/String;

    move-result-object v0

    .line 1465
    :goto_2
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getPercentage()D

    move-result-wide v4

    cmpl-double v3, v4, v8

    if-lez v3, :cond_5

    .line 1466
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "0.00"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getPercentage()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1470
    :goto_3
    iget-object v4, p0, Lcom/xueqiu/android/trade/c/e;->d:Landroid/widget/TextView;

    const v5, 0x7f0704af

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v3, v6, v2

    invoke-virtual {p0, v5, v6}, Lcom/xueqiu/android/trade/c/e;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1471
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/e;->e:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1472
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->g:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1473
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    invoke-interface {v0, p1}, Lcom/xueqiu/android/trade/b/b;->a(Lcom/xueqiu/android/stock/model/StockQuote;)V

    goto/16 :goto_0

    .line 1443
    :cond_2
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getPercentage()D

    move-result-wide v0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_3

    .line 1444
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 1446
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->d:Landroid/widget/TextView;

    const v1, 0x7f010122

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/r;->a(ILandroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 1460
    :cond_4
    iget-wide v0, p0, Lcom/xueqiu/android/trade/c/e;->bc:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 1461
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getRiseStop()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 1462
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getFallStop()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1468
    :cond_5
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "0.00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getPercentage()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3
.end method

.method public final a(Lcom/xueqiu/android/trade/model/TradeAccount;)V
    .locals 6

    .prologue
    const v5, 0x7f0e06fa

    const v1, 0x7f0e06f4

    const v4, 0x7f0e06f3

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1629
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/TradeAccount;->isFirstTrade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1631
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1632
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1633
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1640
    :goto_0
    return-void

    .line 1635
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1636
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1637
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1638
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Double;)V
    .locals 2

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aK:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1650
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 986
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/b;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MKT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    :goto_0
    return-void

    .line 989
    :cond_0
    iget-wide v0, p0, Lcom/xueqiu/android/trade/c/e;->bd:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 990
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    iget-wide v2, p0, Lcom/xueqiu/android/trade/c/e;->bd:D

    invoke-static {p1}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/xueqiu/android/base/util/as;->a(DD)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 994
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 992
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1176
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_4

    .line 1177
    :cond_0
    const-string v0, ""

    .line 1178
    if-eqz p1, :cond_1

    .line 1179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1181
    :cond_1
    if-eqz p2, :cond_2

    .line 1182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1184
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->aN:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    if-eqz p3, :cond_3

    .line 1186
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->aP:Landroid/widget/ImageView;

    invoke-virtual {v0, p3, v1}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1188
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aO:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1189
    iput v2, p0, Lcom/xueqiu/android/trade/c/e;->bb:I

    .line 1190
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/e;->J()V

    .line 1194
    :goto_0
    const/4 v0, 0x1

    if-le p4, v0, :cond_5

    .line 1195
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aQ:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1199
    :goto_1
    return-void

    .line 1192
    :cond_4
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->G_()V

    goto :goto_0

    .line 1197
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aQ:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1531
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->aW:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v0

    instance-of v0, v0, Lcom/xueqiu/android/trade/OrderFullActivity;

    if-eqz v0, :cond_7

    .line 1532
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/OrderFullActivity;

    .line 15690
    iget-object v1, v0, Lcom/xueqiu/android/trade/OrderFullActivity;->q:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    move v1, v2

    .line 15691
    :goto_0
    iput-object p1, v0, Lcom/xueqiu/android/trade/OrderFullActivity;->q:Ljava/util/ArrayList;

    .line 15692
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 15693
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->j()V

    .line 15696
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 15697
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 15698
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15690
    :cond_1
    iget-object v1, v0, Lcom/xueqiu/android/trade/OrderFullActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    .line 15701
    :cond_2
    invoke-static {v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getTradeAccountByStockBrokers(Ljava/util/List;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v1

    .line 15702
    iget-object v3, v0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_5

    :cond_3
    iget-object v3, v0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-nez v3, :cond_4

    if-nez v1, :cond_5

    :cond_4
    if-eqz v1, :cond_6

    .line 15704
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    const/4 v2, 0x1

    .line 15705
    :cond_6
    if-eqz v2, :cond_7

    .line 15706
    iput-object v1, v0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 15707
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->o()V

    .line 1534
    :cond_7
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 1040
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->bi:Z

    if-eqz v0, :cond_0

    .line 1041
    if-eqz p1, :cond_1

    const-string v0, "BUY"

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1042
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aI:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1043
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aH:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1049
    :cond_0
    :goto_0
    return-void

    .line 1045
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aI:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1046
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aH:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d010e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public final a_(I)V
    .locals 3

    .prologue
    .line 960
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->b:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 977
    :goto_1
    return-void

    .line 960
    :sswitch_0
    const-string v2, "BUY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "SELL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "BUY_COVER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "SELL_SHORT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 962
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->at:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u53ef\u4e70"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 965
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->at:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u53ef\u5356"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 968
    :pswitch_2
    if-eqz p1, :cond_1

    .line 969
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->at:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u53ef\u8865\u56de"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 971
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->at:Landroid/widget/EditText;

    const-string v1, "\u6709\u5356\u7a7a\u6301\u4ed3\u540e\u65b9\u53ef\u8865\u56de"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 975
    :pswitch_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->at:Landroid/widget/EditText;

    const-string v1, "\u8f93\u5165\u5356\u7a7a\u6570\u91cf"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 960
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e9b2382 -> :sswitch_2
        0x10266 -> :sswitch_0
        0x26c752 -> :sswitch_1
        0x5c44712f -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final synthetic b()Lcom/xueqiu/android/base/c;
    .locals 4

    .prologue
    .line 57
    .line 16188
    new-instance v0, Lcom/xueqiu/android/trade/d/a;

    iget-boolean v1, p0, Lcom/xueqiu/android/trade/c/e;->aW:Z

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/e;->an:Ljava/lang/String;

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/e;->b:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/xueqiu/android/trade/d/a;-><init>(Lcom/xueqiu/android/trade/b/c;ZLjava/lang/String;Ljava/lang/String;)V

    .line 57
    return-object v0
.end method

.method public final b(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1010
    if-ne v1, p1, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aA:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1021
    :goto_0
    return-void

    .line 1012
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 1013
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aB:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 1014
    :cond_1
    const/4 v0, 0x3

    if-ne v0, p1, :cond_2

    .line 1015
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aC:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 1016
    :cond_2
    const/4 v0, 0x4

    if-ne v0, p1, :cond_3

    .line 1017
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aD:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 1019
    :cond_3
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/e;->D()V

    goto :goto_0
.end method

.method public final b(Lcom/xueqiu/android/stock/model/StockQuote;)V
    .locals 2

    .prologue
    .line 1477
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1489
    :goto_0
    return-void

    .line 1480
    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->an:Ljava/lang/String;

    .line 1481
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->bl:Z

    if-nez v0, :cond_1

    .line 1482
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->u()V

    .line 1483
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/e;->a(Ljava/lang/String;)V

    .line 1485
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->bl:Z

    .line 1486
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->e(Ljava/lang/String;)V

    .line 1487
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->a(Ljava/lang/String;)V

    .line 1488
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->d(I)V

    goto :goto_0
.end method

.method public final b(Lcom/xueqiu/android/trade/model/TradeAccount;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 551
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03021e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/e;->bk:Landroid/view/View;

    .line 552
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->bk:Landroid/view/View;

    const v1, 0x7f0e076d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 553
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->bm:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    const-string v1, "LMT"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 555
    const-string v1, "\u9650\u4ef7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->bk:Landroid/view/View;

    const v1, 0x7f0e076e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 557
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->bm:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    const-string v1, "MKT"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 559
    const-string v1, "\u5e02\u4ef7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->bk:Landroid/view/View;

    const v1, 0x7f0e076f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 561
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->bm:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    const-string v1, "PRE_LMT"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 563
    const-string v1, "\u76d8\u524d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->bk:Landroid/view/View;

    const v2, 0x7f0e0770

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 565
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/e;->bm:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    const-string v2, "AFTER_LMT"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 567
    const-string v2, "\u76d8\u540e"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/TradeAccount;->isFirstTrade()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 570
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 575
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 573
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/Double;)V
    .locals 2

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aL:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1645
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->at:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->at:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->at:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1006
    return-void
.end method

.method public final b(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1538
    if-eqz p1, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1540
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1541
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1542
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1550
    :goto_0
    return-void

    .line 1545
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1546
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1547
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1548
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->at:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aH:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    return-void
.end method

.method public final c(Z)V
    .locals 6

    .prologue
    const v5, 0x7f0e06f8

    const v4, 0x7f0e06f7

    const v3, 0x7f0e06f5

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 1554
    iput-boolean p1, p0, Lcom/xueqiu/android/trade/c/e;->bi:Z

    .line 1555
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->bi:Z

    if-eqz v0, :cond_0

    .line 1556
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1557
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1558
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1565
    :goto_0
    return-void

    .line 1560
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1561
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1562
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    const v1, 0x7f0e06f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1563
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aV:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 633
    const-string v0, "LMT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LMT"

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    const-string v1, "LMT"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 635
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    const-string v1, "LMT"

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->c(Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    const-string v1, "\u9650\u4ef7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 638
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setClickable(Z)V

    .line 639
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    const-string v0, "MKT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MKT"

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 641
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    const-string v1, "MKT"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 642
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    const-string v1, "MKT"

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->c(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    const-string v1, "\u5e02\u4ef7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    const-string v1, "\u5e02\u4ef7"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 646
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setClickable(Z)V

    .line 647
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 648
    :cond_2
    const-string v0, "AFTER_LMT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AFTER_LMT"

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 649
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    const-string v1, "AFTER_LMT"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 650
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    const-string v1, "AFTER_LMT"

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->c(Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    const-string v1, "\u76d8\u540e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 653
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setClickable(Z)V

    .line 654
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 655
    :cond_3
    const-string v0, "PRE_LMT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PRE_LMT"

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    const-string v1, "PRE_LMT"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 657
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    const-string v1, "PRE_LMT"

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->c(Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    const-string v1, "\u76d8\u524d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 660
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setClickable(Z)V

    .line 661
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0
.end method

.method public final d_(Z)V
    .locals 7

    .prologue
    const v6, 0x7f0d00c1

    const v5, 0x7f0d001a

    const v4, 0x7f010047

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1569
    iput-boolean p1, p0, Lcom/xueqiu/android/trade/c/e;->bj:Z

    .line 1570
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/e;->D()V

    .line 1571
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->bj:Z

    if-eqz v0, :cond_2

    .line 1572
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->b:Ljava/lang/String;

    const-string v1, "BUY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->b:Ljava/lang/String;

    const-string v1, "BUY_COVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1573
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aA:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1574
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aB:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1575
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aC:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1576
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aD:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1583
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aA:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1584
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aB:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1585
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aC:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1586
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aD:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1598
    :goto_1
    return-void

    .line 1578
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aA:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1579
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aB:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1580
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aC:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1581
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aD:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1589
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aA:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xueqiu/android/base/r;->a(ILandroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1590
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aB:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xueqiu/android/base/r;->a(ILandroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1591
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aC:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xueqiu/android/base/r;->a(ILandroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1592
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aD:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xueqiu/android/base/r;->a(ILandroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1593
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aA:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1594
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aB:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1595
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aC:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1596
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aD:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1349
    const-string v0, "BUY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1350
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/e;->E()V

    .line 1358
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->u()V

    .line 1359
    return-void

    .line 1351
    :cond_1
    const-string v0, "SELL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1352
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/e;->F()V

    goto :goto_0

    .line 1353
    :cond_2
    const-string v0, "BUY_COVER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1354
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/e;->G()V

    goto :goto_0

    .line 1355
    :cond_3
    const-string v0, "SELL_SHORT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1356
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/e;->H()V

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1511
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1527
    :goto_0
    return-void

    .line 1514
    :cond_0
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/e;->b:Ljava/lang/String;

    .line 1515
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->c()Ljava/lang/String;

    move-result-object v0

    .line 1516
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/c/e;->e(Ljava/lang/String;)V

    .line 1517
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->b:Ljava/lang/String;

    const-string v2, "SELL_SHORT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1518
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xueqiu/android/trade/c/e;->bj:Z

    .line 1522
    :goto_1
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/e;->b(Ljava/lang/String;)V

    .line 1523
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1524
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->c(Ljava/lang/String;)V

    .line 1526
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    invoke-interface {v0, p1}, Lcom/xueqiu/android/trade/b/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1520
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xueqiu/android/trade/c/e;->bj:Z

    goto :goto_1
.end method

.method public final f(Z)V
    .locals 2

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->be:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->be:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aX:Lcom/xueqiu/android/common/widget/p;

    if-eqz v0, :cond_1

    .line 1254
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aX:Lcom/xueqiu/android/common/widget/p;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/p;->b()V

    .line 1255
    iget v0, p0, Lcom/xueqiu/android/trade/c/e;->bb:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1256
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/trade/c/e;->a(ZZ)V

    .line 1261
    :cond_1
    :goto_0
    return-void

    .line 1258
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/trade/c/e;->a(ZZ)V

    goto :goto_0
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/xueqiu/android/base/k;->o()V

    .line 200
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/e;->aW:Z

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/trade/c/e;->bb:I

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/trade/c/e;->bb:I

    goto :goto_0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0, p1}, Lcom/xueqiu/android/base/k;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 210
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/e;->f(Z)V

    .line 214
    :cond_0
    return-void
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Lcom/xueqiu/android/base/k;->p()V

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/e;->f(Z)V

    .line 195
    return-void
.end method

.method public final refresh()V
    .locals 2

    .prologue
    .line 1492
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 1493
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->u()V

    .line 1494
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/e;->a(Ljava/lang/String;)V

    .line 1495
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->C()V

    .line 1496
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->an:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->e(Ljava/lang/String;)V

    .line 1497
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->c(Ljava/lang/String;)V

    .line 1500
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->a(Ljava/lang/String;)V

    .line 1501
    return-void
.end method

.method public final u()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 1362
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->at:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1363
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->at:Landroid/widget/EditText;

    const-string v1, "\u8f93\u5165\u6570\u91cf"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1364
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->av:Landroid/widget/TextView;

    const-string v1, "\u4ed3\u4f4d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1365
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    const-string v1, "\u9650\u4ef7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    const-string v1, "LMT"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1367
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1368
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->as:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1369
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aG:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1370
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aH:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1371
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aH:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d010e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1372
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aI:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1373
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aK:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aL:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1375
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e;->aF:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1376
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/e;->D()V

    .line 1377
    return-void
.end method
