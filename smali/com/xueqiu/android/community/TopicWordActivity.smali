.class public Lcom/xueqiu/android/community/TopicWordActivity;
.super Lcom/xueqiu/android/common/b;
.source "TopicWordActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/ptr/h;


# instance fields
.field A:Lcom/xueqiu/android/community/widget/j;

.field private B:I

.field private C:Landroid/view/View;

.field private D:Landroid/content/Context;

.field private E:Lcom/xueqiu/android/community/widget/TransparentHeader;

.field private F:Landroid/widget/ImageButton;

.field private G:Landroid/widget/LinearLayout;

.field private H:Landroid/graphics/drawable/Drawable;

.field j:Landroid/widget/LinearLayout;

.field k:Landroid/widget/LinearLayout;

.field p:Landroid/widget/ListView;

.field q:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

.field r:Landroid/widget/FrameLayout;

.field s:J

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Landroid/widget/TextView;

.field w:Lcom/xueqiu/android/community/a/ak;

.field x:Ljava/lang/String;

.field y:Z

.field z:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 76
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->s:J

    .line 86
    const-string v0, "hot"

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->x:Ljava/lang/String;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->y:Z

    return-void
.end method

.method static a(Landroid/widget/LinearLayout;Z)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 413
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 415
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 417
    if-eqz p1, :cond_0

    .line 418
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 419
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 424
    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 425
    return-void

    .line 421
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 422
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/TopicWordActivity;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 56
    .line 7498
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->z:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 7500
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->D:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->z:Landroid/widget/FrameLayout;

    .line 7502
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->z:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/xueqiu/android/community/TopicWordActivity$9;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/TopicWordActivity$9;-><init>(Lcom/xueqiu/android/community/TopicWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7509
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->z:Landroid/widget/FrameLayout;

    const v1, 0x7f0d00db

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 7511
    new-instance v0, Lcom/xueqiu/android/community/widget/j;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->D:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/community/widget/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->A:Lcom/xueqiu/android/community/widget/j;

    .line 7513
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->A:Lcom/xueqiu/android/community/widget/j;

    iget-object v0, v0, Lcom/xueqiu/android/community/widget/j;->a:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setText(Ljava/lang/CharSequence;)V

    .line 7515
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->A:Lcom/xueqiu/android/community/widget/j;

    iget-object v0, v0, Lcom/xueqiu/android/community/widget/j;->a:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->t:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setSelection(I)V

    .line 7517
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->A:Lcom/xueqiu/android/community/widget/j;

    new-instance v1, Lcom/xueqiu/android/community/TopicWordActivity$10;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/TopicWordActivity$10;-><init>(Lcom/xueqiu/android/community/TopicWordActivity;)V

    iput-object v1, v0, Lcom/xueqiu/android/community/widget/j;->b:Lcom/xueqiu/android/community/widget/k;

    .line 7550
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x50

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 7552
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->z:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/xueqiu/android/community/TopicWordActivity;->A:Lcom/xueqiu/android/community/widget/j;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7555
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7556
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7558
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->A:Lcom/xueqiu/android/community/widget/j;

    iget-object v0, v0, Lcom/xueqiu/android/community/widget/j;->a:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->requestFocus()Z

    .line 7559
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->r:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->z:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7560
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/xueqiu/android/community/TopicWordActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/TopicWordActivity$2;-><init>(Lcom/xueqiu/android/community/TopicWordActivity;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/TopicWordActivity;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 6219
    .line 6221
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->E:Lcom/xueqiu/android/community/widget/TransparentHeader;

    if-eqz v1, :cond_0

    .line 6222
    if-nez p1, :cond_3

    .line 6223
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->p:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6224
    if-eqz v2, :cond_4

    .line 6225
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 6226
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 6228
    :goto_0
    if-nez v1, :cond_1

    .line 6229
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->E:Lcom/xueqiu/android/community/widget/TransparentHeader;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/TransparentHeader;->b()V

    .line 6233
    :goto_1
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->E:Lcom/xueqiu/android/community/widget/TransparentHeader;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 6234
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->E:Lcom/xueqiu/android/community/widget/TransparentHeader;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getHeight()I

    move-result v1

    sub-int v0, v1, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->E:Lcom/xueqiu/android/community/widget/TransparentHeader;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 6235
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->E:Lcom/xueqiu/android/community/widget/TransparentHeader;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getHeaderTitle()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 6239
    :cond_0
    :goto_2
    return-void

    .line 6231
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->E:Lcom/xueqiu/android/community/widget/TransparentHeader;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/TransparentHeader;->a()V

    goto :goto_1

    .line 6237
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->E:Lcom/xueqiu/android/community/widget/TransparentHeader;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getHeaderTitle()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 6240
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->E:Lcom/xueqiu/android/community/widget/TransparentHeader;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getHeaderTitle()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method private b(Z)Landroid/widget/LinearLayout;
    .locals 12

    .prologue
    const v11, 0x7f0800f2

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, -0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 296
    invoke-direct {p0}, Lcom/xueqiu/android/community/TopicWordActivity;->k()Landroid/widget/TextView;

    move-result-object v0

    .line 298
    invoke-direct {p0}, Lcom/xueqiu/android/community/TopicWordActivity;->k()Landroid/widget/TextView;

    move-result-object v1

    .line 300
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x7f0800f4

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v3

    const v4, 0x7f0800f3

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 302
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 304
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/xueqiu/android/community/TopicWordActivity;->D:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 306
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 308
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 310
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/xueqiu/android/community/TopicWordActivity;->D:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 312
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 314
    new-instance v5, Lcom/xueqiu/android/community/TopicWordActivity$6;

    invoke-direct {v5, p0}, Lcom/xueqiu/android/community/TopicWordActivity$6;-><init>(Lcom/xueqiu/android/community/TopicWordActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    const-string v5, "\u70ed\u95e8\u8bdd\u9898"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v11}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v6

    invoke-direct {v5, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    invoke-direct {p0}, Lcom/xueqiu/android/community/TopicWordActivity;->l()Landroid/view/View;

    move-result-object v0

    .line 339
    invoke-virtual {v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    if-eqz p1, :cond_0

    .line 342
    invoke-direct {p0}, Lcom/xueqiu/android/community/TopicWordActivity;->m()Landroid/view/View;

    move-result-object v0

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/xueqiu/android/community/TopicWordActivity;->D:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 347
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 349
    const-string v5, "\u6700\u65b0\u8bdd\u9898"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    new-instance v5, Lcom/xueqiu/android/community/TopicWordActivity$7;

    invoke-direct {v5, p0}, Lcom/xueqiu/android/community/TopicWordActivity$7;-><init>(Lcom/xueqiu/android/community/TopicWordActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v11}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v6

    invoke-direct {v5, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    invoke-direct {p0}, Lcom/xueqiu/android/community/TopicWordActivity;->l()Landroid/view/View;

    move-result-object v1

    .line 373
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 375
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    if-eqz p1, :cond_1

    .line 378
    invoke-direct {p0}, Lcom/xueqiu/android/community/TopicWordActivity;->m()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    return-object v3
.end method

.method private b(I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 442
    if-ne p1, v4, :cond_2

    .line 4571
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->G:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 4572
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->D:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->G:Landroid/widget/LinearLayout;

    .line 4573
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4575
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->D:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4576
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 4577
    const v1, 0x7f07020e

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4578
    const v1, 0x7f0d00a6

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4579
    const v1, 0x7f0800f5

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->b(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4580
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->G:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x7f0800f2

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v3

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4581
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->G:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/xueqiu/android/community/TopicWordActivity;->m()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4583
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4584
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 4586
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 4587
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setSelection(I)V

    .line 445
    :cond_2
    invoke-static {}, Lcom/xueqiu/android/community/m;->a()Lcom/xueqiu/android/community/m;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->x:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/community/TopicWordActivity;->t:Ljava/lang/String;

    new-instance v3, Lcom/xueqiu/android/community/TopicWordActivity$8;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/community/TopicWordActivity$8;-><init>(Lcom/xueqiu/android/community/TopicWordActivity;)V

    .line 5082
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v4

    new-instance v5, Lcom/xueqiu/android/community/m$1;

    invoke-direct {v5, v0, v3, v1, v2}, Lcom/xueqiu/android/community/m$1;-><init>(Lcom/xueqiu/android/community/m;Lcom/xueqiu/android/community/n;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2, p1, v1, v5}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;ILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 471
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/community/TopicWordActivity;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/TopicWordActivity;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/community/TopicWordActivity;I)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 7200
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->p:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 7201
    invoke-direct {p0}, Lcom/xueqiu/android/community/TopicWordActivity;->j()I

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->B:I

    sget v2, Lcom/xueqiu/android/community/widget/TransparentHeader;->a:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 7202
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    .line 7203
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lcom/xueqiu/android/community/TopicWordActivity;->j()I

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->B:I

    sget v2, Lcom/xueqiu/android/community/widget/TransparentHeader;->a:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 7207
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->j:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/TopicWordActivity;)V
    .locals 2

    .prologue
    .line 56
    .line 7592
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->G:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7593
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 56
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/community/TopicWordActivity;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/xueqiu/android/community/TopicWordActivity;->n()V

    return-void
.end method

.method static synthetic e(Lcom/xueqiu/android/community/TopicWordActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->D:Landroid/content/Context;

    return-object v0
.end method

.method private j()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->C:Landroid/view/View;

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->C:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    goto :goto_0
.end method

.method private k()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 389
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->D:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 391
    const/4 v1, 0x0

    const v2, 0x7f0800f5

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 393
    const v1, 0x7f0d010c

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 395
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 396
    return-object v0
.end method

.method private l()Landroid/view/View;
    .locals 2

    .prologue
    .line 400
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->D:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 401
    const v1, 0x7f0d00a6

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 402
    return-object v0
.end method

.method private m()Landroid/view/View;
    .locals 2

    .prologue
    .line 406
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->D:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 407
    const v1, 0x7f0d00bb

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 408
    return-object v0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 598
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 601
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/TopicWordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 602
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->r:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 603
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 475
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->w:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ak;->a()Ljava/util/ArrayList;

    move-result-object v0

    instance-of v0, v0, Lcom/xueqiu/android/common/model/PagedGroup;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->w:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ak;->a()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/PagedGroup;

    .line 477
    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/PagedGroup;->getMaxPage()I

    move-result v1

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/PagedGroup;->getCurrentPage()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 478
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->q:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f()V

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/PagedGroup;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/TopicWordActivity;->b(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 607
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 608
    if-ne p1, v1, :cond_3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 609
    const-string v0, "delete_status_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 611
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->w:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ak;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 612
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 613
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-nez v5, :cond_0

    .line 614
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->w:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ak;->notifyDataSetChanged()V

    .line 632
    :cond_2
    :goto_0
    return-void

    .line 619
    :cond_3
    if-ne p1, v1, :cond_2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 620
    const-string v0, "back_status"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 621
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->w:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/ak;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 623
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/Status;

    .line 624
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 625
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getRetweetsCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/model/Status;->setRetweetsCount(I)V

    .line 626
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getCommentsCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/model/Status;->setCommentsCount(I)V

    .line 627
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->w:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ak;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->z:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    invoke-direct {p0}, Lcom/xueqiu/android/community/TopicWordActivity;->n()V

    .line 491
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    .line 492
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const v2, 0x7f0201e5

    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 98
    iput-object p0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->D:Landroid/content/Context;

    .line 99
    invoke-virtual {p0}, Lcom/xueqiu/android/community/TopicWordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string v1, "topic_bg"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1644
    packed-switch v1, :pswitch_data_0

    .line 1655
    invoke-static {v2}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->H:Landroid/graphics/drawable/Drawable;

    .line 105
    :goto_1
    const-string v1, "topic_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/HotEvent;

    .line 107
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/HotEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->t:Ljava/lang/String;

    .line 108
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/HotEvent;->getContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->u:Ljava/lang/String;

    .line 109
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/HotEvent;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->s:J

    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->D:Landroid/content/Context;

    const v1, 0x7f03008f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->r:Landroid/widget/FrameLayout;

    .line 112
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->r:Landroid/widget/FrameLayout;

    const v1, 0x7f0e026a

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->q:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    .line 113
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->q:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0, p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setOnRefreshListener(Lcom/xueqiu/android/common/widget/ptr/h;)V

    .line 115
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->r:Landroid/widget/FrameLayout;

    const v1, 0x7f0e026a

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->p:Landroid/widget/ListView;

    .line 116
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 117
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->p:Landroid/widget/ListView;

    const v1, 0x7f020461

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->p:Landroid/widget/ListView;

    new-instance v1, Lcom/xueqiu/android/community/TopicWordActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/TopicWordActivity$1;-><init>(Lcom/xueqiu/android/community/TopicWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2247
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->D:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2249
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 2251
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2253
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xueqiu/android/community/TopicWordActivity;->D:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2255
    iget-object v2, p0, Lcom/xueqiu/android/community/TopicWordActivity;->H:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2257
    iget-object v2, p0, Lcom/xueqiu/android/community/TopicWordActivity;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2259
    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2261
    const/16 v2, 0x51

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2263
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2265
    const v2, 0x7f0800fa

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2267
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2269
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xueqiu/android/community/TopicWordActivity;->D:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->v:Landroid/widget/TextView;

    .line 2271
    const v1, 0x7f0800f6

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v1

    .line 2273
    const v2, 0x7f0800f8

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v2

    .line 2275
    iget-object v3, p0, Lcom/xueqiu/android/community/TopicWordActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2277
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->v:Landroid/widget/TextView;

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2279
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->v:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xueqiu/android/community/TopicWordActivity;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2281
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->v:Landroid/widget/TextView;

    const v2, 0x7f020460

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2283
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->v:Landroid/widget/TextView;

    const v2, 0x7f0800f7

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2285
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2287
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->v:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2289
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const v2, 0x7f0800f9

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v2

    invoke-direct {v1, v5, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iput-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->C:Landroid/view/View;

    .line 130
    invoke-direct {p0, v4}, Lcom/xueqiu/android/community/TopicWordActivity;->b(Z)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->k:Landroid/widget/LinearLayout;

    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->C:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 133
    invoke-direct {p0, v6}, Lcom/xueqiu/android/community/TopicWordActivity;->b(Z)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->j:Landroid/widget/LinearLayout;

    .line 134
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    new-instance v0, Lcom/xueqiu/android/community/a/ak;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/a/ak;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->w:Lcom/xueqiu/android/community/a/ak;

    .line 136
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->w:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 139
    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 140
    sget v1, Lcom/xueqiu/android/community/widget/TransparentHeader;->a:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 141
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->r:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/xueqiu/android/community/TopicWordActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-direct {p0, v6}, Lcom/xueqiu/android/community/TopicWordActivity;->b(I)V

    .line 145
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->p:Landroid/widget/ListView;

    new-instance v1, Lcom/xueqiu/android/community/TopicWordActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/TopicWordActivity$3;-><init>(Lcom/xueqiu/android/community/TopicWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 157
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->D:Landroid/content/Context;

    const v1, 0x7f0300ba

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 158
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x50

    invoke-direct {v2, v5, v7, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 159
    const v0, 0x7f0e02f7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xueqiu/android/community/TopicWordActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 160
    new-instance v0, Lcom/xueqiu/android/community/TopicWordActivity$4;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/TopicWordActivity$4;-><init>(Lcom/xueqiu/android/community/TopicWordActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->r:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v6}, Lcom/xueqiu/android/community/TopicWordActivity;->a(Landroid/widget/LinearLayout;Z)V

    .line 169
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v4}, Lcom/xueqiu/android/community/TopicWordActivity;->a(Landroid/widget/LinearLayout;Z)V

    .line 170
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v6}, Lcom/xueqiu/android/community/TopicWordActivity;->a(Landroid/widget/LinearLayout;Z)V

    .line 171
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v4}, Lcom/xueqiu/android/community/TopicWordActivity;->a(Landroid/widget/LinearLayout;Z)V

    .line 173
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->r:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/TopicWordActivity;->setContentView(Landroid/view/View;)V

    .line 3066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/support/v7/a/a;->d()V

    .line 3182
    const v0, 0x7f0e0119

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/TopicWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/widget/TransparentHeader;

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->E:Lcom/xueqiu/android/community/widget/TransparentHeader;

    .line 3183
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->E:Lcom/xueqiu/android/community/widget/TransparentHeader;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getBackButton()Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->F:Landroid/widget/ImageButton;

    .line 3184
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->F:Landroid/widget/ImageButton;

    new-instance v1, Lcom/xueqiu/android/community/TopicWordActivity$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/TopicWordActivity$5;-><init>(Lcom/xueqiu/android/community/TopicWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->E:Lcom/xueqiu/android/community/widget/TransparentHeader;

    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->H:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/widget/TransparentHeader;->setHeaderBackground(Landroid/graphics/Bitmap;)V

    .line 178
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->E:Lcom/xueqiu/android/community/widget/TransparentHeader;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/TransparentHeader;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1646
    :pswitch_0
    invoke-static {v2}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->H:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 1649
    :pswitch_1
    const v1, 0x7f0201e6

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->H:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 1652
    :pswitch_2
    const v1, 0x7f0201e7

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->H:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 1644
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 636
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onDestroy()V

    .line 637
    invoke-static {}, Lcom/xueqiu/android/community/m;->a()Lcom/xueqiu/android/community/m;

    move-result-object v0

    .line 5226
    iput-object v1, v0, Lcom/xueqiu/android/community/m;->a:Lcom/xueqiu/android/common/model/PagedGroup;

    .line 5227
    iput-object v1, v0, Lcom/xueqiu/android/community/m;->b:Lcom/xueqiu/android/common/model/PagedGroup;

    .line 638
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 429
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onWindowFocusChanged(Z)V

    .line 430
    if-eqz p1, :cond_3

    .line 431
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->C:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 432
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->C:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->B:I

    .line 433
    iget-boolean v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->y:Z

    if-eqz v0, :cond_3

    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/TopicWordActivity;->y:Z

    .line 3193
    invoke-static {}, Lcom/xueqiu/android/community/m;->a()Lcom/xueqiu/android/community/m;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->t:Ljava/lang/String;

    const-string v2, "hot"

    .line 4054
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v4, v1

    .line 4056
    const-string v1, "time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4057
    iget-object v1, v0, Lcom/xueqiu/android/community/m;->a:Lcom/xueqiu/android/common/model/PagedGroup;

    if-nez v1, :cond_0

    .line 4058
    invoke-static {v4, v5}, Lcom/xueqiu/android/community/m;->a(J)Lcom/xueqiu/android/common/model/PagedGroup;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/community/m;->a:Lcom/xueqiu/android/common/model/PagedGroup;

    .line 4060
    :cond_0
    iget-object v1, v0, Lcom/xueqiu/android/community/m;->a:Lcom/xueqiu/android/common/model/PagedGroup;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/xueqiu/android/community/m;->a:Lcom/xueqiu/android/common/model/PagedGroup;

    iget-wide v2, v1, Lcom/xueqiu/android/common/model/PagedGroup;->mID:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 4061
    iput-object v6, v0, Lcom/xueqiu/android/community/m;->a:Lcom/xueqiu/android/common/model/PagedGroup;

    .line 4063
    :cond_1
    iget-object v0, v0, Lcom/xueqiu/android/community/m;->a:Lcom/xueqiu/android/common/model/PagedGroup;

    .line 3194
    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->w:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/ak;->a()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->w:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/ak;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 3195
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity;->w:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/a/ak;->a(Ljava/util/ArrayList;)V

    .line 439
    :cond_3
    return-void

    .line 4065
    :cond_4
    iget-object v1, v0, Lcom/xueqiu/android/community/m;->b:Lcom/xueqiu/android/common/model/PagedGroup;

    if-nez v1, :cond_5

    .line 4066
    invoke-static {v4, v5}, Lcom/xueqiu/android/community/m;->a(J)Lcom/xueqiu/android/common/model/PagedGroup;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/community/m;->b:Lcom/xueqiu/android/common/model/PagedGroup;

    .line 4068
    :cond_5
    iget-object v1, v0, Lcom/xueqiu/android/community/m;->b:Lcom/xueqiu/android/common/model/PagedGroup;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/xueqiu/android/community/m;->b:Lcom/xueqiu/android/common/model/PagedGroup;

    iget-wide v2, v1, Lcom/xueqiu/android/common/model/PagedGroup;->mID:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    .line 4069
    iput-object v6, v0, Lcom/xueqiu/android/community/m;->b:Lcom/xueqiu/android/common/model/PagedGroup;

    .line 4071
    :cond_6
    iget-object v0, v0, Lcom/xueqiu/android/community/m;->b:Lcom/xueqiu/android/common/model/PagedGroup;

    goto :goto_0
.end method
