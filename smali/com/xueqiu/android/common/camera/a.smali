.class public Lcom/xueqiu/android/common/camera/a;
.super Lcom/xueqiu/android/common/c;
.source "CameraFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/xueqiu/android/common/camera/CameraPreview;

.field private ak:Landroid/view/View;

.field private al:Landroid/widget/TextView;

.field private am:Landroid/widget/TextView;

.field private an:Landroid/view/View;

.field private ao:Landroid/view/View;

.field private ap:Lcom/xueqiu/android/common/camera/g;

.field private aq:Lcom/xueqiu/android/common/camera/b;

.field private ar:Landroid/os/Handler;

.field private as:Z

.field private at:Z

.field private au:I

.field private av:Lcom/xueqiu/android/common/camera/d;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 62
    new-instance v0, Lcom/xueqiu/android/common/camera/b;

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/common/camera/b;-><init>(Lcom/xueqiu/android/common/camera/a;B)V

    iput-object v0, p0, Lcom/xueqiu/android/common/camera/a;->aq:Lcom/xueqiu/android/common/camera/b;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/camera/a;->ar:Landroid/os/Handler;

    .line 65
    iput-boolean v1, p0, Lcom/xueqiu/android/common/camera/a;->as:Z

    .line 66
    iput-boolean v1, p0, Lcom/xueqiu/android/common/camera/a;->at:Z

    .line 69
    new-instance v0, Lcom/xueqiu/android/common/camera/d;

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/common/camera/d;-><init>(Lcom/xueqiu/android/common/camera/a;B)V

    iput-object v0, p0, Lcom/xueqiu/android/common/camera/a;->av:Lcom/xueqiu/android/common/camera/d;

    .line 334
    return-void
.end method

.method private C()V
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/a/k;->setResult(I)V

    .line 257
    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 258
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/camera/a;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/camera/a;->a_(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/xueqiu/android/common/camera/g;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string v1, "extra_setting"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 74
    const-class v1, Lcom/xueqiu/android/common/camera/a;

    invoke-static {p0, v1, v0}, Lcom/xueqiu/android/common/SingleFragmentActivity;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/camera/a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/camera/a;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 11300
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 11301
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11302
    const-string v2, "bitmap"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11303
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 11304
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 11305
    iget-object v1, p0, Lcom/xueqiu/android/common/camera/a;->ar:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 261
    iget-object v3, p0, Lcom/xueqiu/android/common/camera/a;->c:Landroid/widget/Button;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 262
    iget-object v3, p0, Lcom/xueqiu/android/common/camera/a;->d:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v3, p0, Lcom/xueqiu/android/common/camera/a;->g:Landroid/widget/ImageButton;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 264
    iget-object v3, p0, Lcom/xueqiu/android/common/camera/a;->g:Landroid/widget/ImageButton;

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 265
    iget-object v3, p0, Lcom/xueqiu/android/common/camera/a;->e:Landroid/view/View;

    if-eqz p1, :cond_4

    move v0, v2

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->f:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    return-void

    :cond_0
    move v0, v2

    .line 261
    goto :goto_0

    :cond_1
    move v0, v2

    .line 262
    goto :goto_1

    :cond_2
    move v0, v2

    .line 263
    goto :goto_2

    :cond_3
    move v0, v2

    .line 264
    goto :goto_3

    :cond_4
    move v0, v1

    .line 265
    goto :goto_4

    :cond_5
    move v2, v1

    .line 266
    goto :goto_5
.end method

.method static synthetic a(Lcom/xueqiu/android/common/camera/a;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/xueqiu/android/common/camera/a;->as:Z

    return p1
.end method

.method static synthetic b(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/CameraPreview;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/common/camera/a;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/xueqiu/android/common/camera/a;->u()V

    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/g;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->ap:Lcom/xueqiu/android/common/camera/g;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/common/camera/a;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/xueqiu/android/common/camera/a;->at:Z

    return v0
.end method

.method static synthetic f(Lcom/xueqiu/android/common/camera/a;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/xueqiu/android/common/camera/a;->C()V

    return-void
.end method

.method private u()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 130
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->ak:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 131
    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/a;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    .line 132
    if-gez v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->ak:Landroid/view/View;

    iget-object v1, p0, Lcom/xueqiu/android/common/camera/a;->av:Lcom/xueqiu/android/common/camera/d;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 158
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->ap:Lcom/xueqiu/android/common/camera/g;

    .line 5062
    iget v0, v0, Lcom/xueqiu/android/common/camera/g;->c:I

    .line 136
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 137
    int-to-float v0, v1

    const v2, 0x3f36db6e

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/xueqiu/android/common/camera/a;->au:I

    .line 142
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->an:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->an:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 144
    iget v2, p0, Lcom/xueqiu/android/common/camera/a;->au:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 145
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 149
    :goto_2
    iget-object v1, p0, Lcom/xueqiu/android/common/camera/a;->an:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->ap:Lcom/xueqiu/android/common/camera/g;

    .line 6062
    iget v0, v0, Lcom/xueqiu/android/common/camera/g;->c:I

    .line 151
    if-nez v0, :cond_4

    .line 6161
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->am:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6162
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->am:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getRotation()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 6163
    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ay;->c(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/common/camera/a;->au:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 6164
    iget-object v1, p0, Lcom/xueqiu/android/common/camera/a;->am:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 6165
    iget-object v2, p0, Lcom/xueqiu/android/common/camera/a;->ao:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6166
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6167
    iget-object v2, p0, Lcom/xueqiu/android/common/camera/a;->am:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6169
    iget-object v1, p0, Lcom/xueqiu/android/common/camera/a;->am:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setPivotX(F)V

    .line 6170
    iget-object v1, p0, Lcom/xueqiu/android/common/camera/a;->am:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setPivotY(F)V

    .line 6171
    iget-object v1, p0, Lcom/xueqiu/android/common/camera/a;->am:Landroid/widget/TextView;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setRotation(F)V

    .line 6173
    iget-object v1, p0, Lcom/xueqiu/android/common/camera/a;->am:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 6174
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->am:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/common/camera/a;->ao:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/xueqiu/android/common/camera/a;->am:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/common/camera/a;->al:Landroid/widget/TextView;

    const-string v0, ""

    .line 156
    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 139
    :cond_2
    int-to-float v0, v1

    const v2, 0x3f2aaaab

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/xueqiu/android/common/camera/a;->au:I

    goto/16 :goto_1

    .line 147
    :cond_3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/xueqiu/android/common/camera/a;->au:I

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_2

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->am:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/xueqiu/android/common/camera/a;->al:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->ap:Lcom/xueqiu/android/common/camera/g;

    .line 7074
    iget-object v0, v0, Lcom/xueqiu/android/common/camera/g;->e:Ljava/lang/String;

    .line 156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f07006c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/camera/a;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->ap:Lcom/xueqiu/android/common/camera/g;

    .line 8074
    iget-object v0, v0, Lcom/xueqiu/android/common/camera/g;->e:Ljava/lang/String;

    goto :goto_3
.end method


# virtual methods
.method public final K_()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->K_()V

    .line 181
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/camera/CameraPreview;->a()V

    .line 182
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 79
    const v0, 0x7f030129

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/a;->w()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/a;->d()V

    .line 87
    const v0, 0x7f0e049a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/camera/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/camera/CameraPreview;

    iput-object v0, p0, Lcom/xueqiu/android/common/camera/a;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    .line 88
    const v0, 0x7f0e04a5

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/camera/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/common/camera/a;->g:Landroid/widget/ImageButton;

    .line 89
    const v0, 0x7f0e04a3

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/camera/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/common/camera/a;->b:Landroid/widget/ImageView;

    .line 90
    const v0, 0x7f0e00b2

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/camera/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/common/camera/a;->c:Landroid/widget/Button;

    .line 91
    const v0, 0x7f0e0498

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/camera/a;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/camera/a;->d:Landroid/view/View;

    .line 92
    const v0, 0x7f0e04a4

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/camera/a;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/camera/a;->e:Landroid/view/View;

    .line 93
    const v0, 0x7f0e04a6

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/camera/a;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/camera/a;->f:Landroid/view/View;

    .line 94
    const v0, 0x7f0e04a1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/camera/a;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/camera/a;->h:Landroid/view/View;

    .line 95
    const v0, 0x7f0e049b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/camera/a;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/camera/a;->ak:Landroid/view/View;

    .line 96
    const v0, 0x7f0e04a0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/camera/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/camera/a;->al:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0e04a2

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/camera/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/camera/a;->am:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0e049d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/camera/a;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/camera/a;->ao:Landroid/view/View;

    .line 99
    const v0, 0x7f0e049c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/camera/a;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/camera/a;->an:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 108
    if-eqz v0, :cond_0

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 109
    const-string v1, "extra_setting"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/camera/g;

    iput-object v0, p0, Lcom/xueqiu/android/common/camera/a;->ap:Lcom/xueqiu/android/common/camera/g;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->ap:Lcom/xueqiu/android/common/camera/g;

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Lcom/xueqiu/android/common/camera/g;

    invoke-direct {v0}, Lcom/xueqiu/android/common/camera/g;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/camera/a;->ap:Lcom/xueqiu/android/common/camera/g;

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    iget-object v1, p0, Lcom/xueqiu/android/common/camera/a;->ap:Lcom/xueqiu/android/common/camera/g;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/camera/CameraPreview;->setCameraSetting(Lcom/xueqiu/android/common/camera/g;)V

    .line 116
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->ap:Lcom/xueqiu/android/common/camera/g;

    .line 3070
    iget-object v0, v0, Lcom/xueqiu/android/common/camera/g;->d:Ljava/lang/String;

    .line 117
    const-string v1, "back"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "front"

    .line 118
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->ak:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->ap:Lcom/xueqiu/android/common/camera/g;

    .line 3074
    iget-object v0, v0, Lcom/xueqiu/android/common/camera/g;->e:Ljava/lang/String;

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->al:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/common/camera/a;->ap:Lcom/xueqiu/android/common/camera/g;

    .line 4074
    iget-object v1, v1, Lcom/xueqiu/android/common/camera/g;->e:Ljava/lang/String;

    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_3
    return-void

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->ak:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->d()V

    .line 187
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/camera/CameraPreview;->b()V

    .line 188
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->ar:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->ak:Landroid/view/View;

    iget-object v1, p0, Lcom/xueqiu/android/common/camera/a;->av:Lcom/xueqiu/android/common/camera/d;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 252
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->e()V

    .line 253
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 271
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 280
    :goto_0
    return v3

    .line 273
    :pswitch_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/a;->z()V

    .line 274
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/camera/a;->a(Z)V

    .line 275
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    iget-object v1, p0, Lcom/xueqiu/android/common/camera/a;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "bitmap"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public final o()V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->o()V

    .line 193
    invoke-direct {p0}, Lcom/xueqiu/android/common/camera/a;->u()V

    .line 194
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 200
    :sswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/camera/CameraPreview;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/common/camera/a;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    .line 8117
    iget-boolean v1, v1, Lcom/xueqiu/android/common/camera/CameraPreview;->a:Z

    .line 201
    if-eqz v1, :cond_0

    .line 8239
    iget-object v1, p0, Lcom/xueqiu/android/common/camera/a;->h:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 8240
    iget-object v1, p0, Lcom/xueqiu/android/common/camera/a;->ar:Landroid/os/Handler;

    new-instance v2, Lcom/xueqiu/android/common/camera/a$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/camera/a$1;-><init>(Lcom/xueqiu/android/common/camera/a;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    iget-object v1, p0, Lcom/xueqiu/android/common/camera/a;->aq:Lcom/xueqiu/android/common/camera/b;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xueqiu/android/common/camera/a;->aq:Lcom/xueqiu/android/common/camera/b;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 204
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 209
    :sswitch_1
    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/a/k;->setResult(I)V

    .line 210
    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    goto :goto_0

    .line 214
    :sswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    .line 9083
    invoke-virtual {v0}, Lcom/xueqiu/android/common/camera/CameraPreview;->b()V

    .line 9084
    iget-object v1, v0, Lcom/xueqiu/android/common/camera/CameraPreview;->b:Lcom/xueqiu/android/common/camera/g;

    .line 10062
    iget v1, v1, Lcom/xueqiu/android/common/camera/g;->c:I

    .line 9084
    if-nez v1, :cond_1

    .line 9085
    iget-object v1, v0, Lcom/xueqiu/android/common/camera/CameraPreview;->b:Lcom/xueqiu/android/common/camera/g;

    .line 10066
    iput v2, v1, Lcom/xueqiu/android/common/camera/g;->c:I

    .line 9089
    :goto_1
    invoke-virtual {v0}, Lcom/xueqiu/android/common/camera/CameraPreview;->a()V

    .line 215
    invoke-direct {p0}, Lcom/xueqiu/android/common/camera/a;->u()V

    goto :goto_0

    .line 9087
    :cond_1
    iget-object v1, v0, Lcom/xueqiu/android/common/camera/CameraPreview;->b:Lcom/xueqiu/android/common/camera/g;

    .line 11066
    iput v6, v1, Lcom/xueqiu/android/common/camera/g;->c:I

    goto :goto_1

    .line 219
    :sswitch_3
    iput-boolean v2, p0, Lcom/xueqiu/android/common/camera/a;->at:Z

    .line 221
    iget-boolean v0, p0, Lcom/xueqiu/android/common/camera/a;->as:Z

    if-eqz v0, :cond_2

    .line 222
    invoke-direct {p0}, Lcom/xueqiu/android/common/camera/a;->C()V

    .line 228
    :goto_2
    :sswitch_4
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    invoke-direct {p0, v6}, Lcom/xueqiu/android/common/camera/a;->a(Z)V

    .line 230
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/camera/CameraPreview;->a()V

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/a;->y()Landroid/app/Dialog;

    goto :goto_2

    .line 198
    :sswitch_data_0
    .sparse-switch
        0x7f0e00b2 -> :sswitch_1
        0x7f0e0498 -> :sswitch_2
        0x7f0e04a4 -> :sswitch_4
        0x7f0e04a5 -> :sswitch_0
        0x7f0e04a6 -> :sswitch_3
    .end sparse-switch
.end method

.method public final p()V
    .locals 0

    .prologue
    .line 324
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->p()V

    .line 325
    return-void
.end method
