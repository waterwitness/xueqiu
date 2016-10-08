.class public Lcom/xueqiu/android/common/ShareActivity;
.super Landroid/app/Activity;
.source "ShareActivity.java"


# instance fields
.field a:Z

.field b:Lcom/xueqiu/android/common/n;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/xueqiu/android/common/ShareActivity;->a:Z

    .line 36
    iput-boolean v1, p0, Lcom/xueqiu/android/common/ShareActivity;->c:Z

    .line 37
    const-string v0, "type_normal"

    iput-object v0, p0, Lcom/xueqiu/android/common/ShareActivity;->d:Ljava/lang/String;

    .line 38
    iput-boolean v1, p0, Lcom/xueqiu/android/common/ShareActivity;->e:Z

    .line 265
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/xueqiu/android/common/ShareActivity;->c:Z

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/common/ShareActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/ShareActivity$2;-><init>(Lcom/xueqiu/android/common/ShareActivity;)V

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    .line 232
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 237
    iget-boolean v0, p0, Lcom/xueqiu/android/common/ShareActivity;->a:Z

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/xueqiu/android/common/ShareActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/ShareActivity$3;-><init>(Lcom/xueqiu/android/common/ShareActivity;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/ShareActivity;->a:Z

    .line 247
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v0, Lcom/xueqiu/android/common/n;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/ShareActivity;->b:Lcom/xueqiu/android/common/n;

    .line 44
    invoke-virtual {p0}, Lcom/xueqiu/android/common/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/xueqiu/android/common/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type_comment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/common/ShareActivity;->c:Z

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/xueqiu/android/common/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_has_share_title"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/common/ShareActivity;->e:Z

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/common/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showItem"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    new-instance v2, Lcom/xueqiu/android/common/o;

    invoke-direct {v2}, Lcom/xueqiu/android/common/o;-><init>()V

    .line 59
    const v3, 0x7f0203d3

    const v4, 0x7f0203d4

    invoke-static {v3, v4}, Lcom/xueqiu/android/base/r;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->a:Landroid/graphics/drawable/Drawable;

    .line 60
    const v3, 0x7f07037d

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->b:Ljava/lang/String;

    .line 61
    new-instance v3, Lcom/xueqiu/android/common/ShareActivity$1;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/ShareActivity$1;-><init>(Lcom/xueqiu/android/common/ShareActivity;)V

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->c:Landroid/view/View$OnClickListener;

    .line 70
    const v3, 0x7f070383

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/xueqiu/android/common/ShareActivity;->c:Z

    if-nez v3, :cond_2

    .line 72
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_2
    new-instance v2, Lcom/xueqiu/android/common/o;

    invoke-direct {v2}, Lcom/xueqiu/android/common/o;-><init>()V

    .line 78
    const v3, 0x7f0203cc

    const v4, 0x7f0203cd

    invoke-static {v3, v4}, Lcom/xueqiu/android/base/r;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->a:Landroid/graphics/drawable/Drawable;

    .line 79
    const v3, 0x7f07037a

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->b:Ljava/lang/String;

    .line 80
    new-instance v3, Lcom/xueqiu/android/common/ShareActivity$4;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/ShareActivity$4;-><init>(Lcom/xueqiu/android/common/ShareActivity;)V

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->c:Landroid/view/View$OnClickListener;

    .line 89
    const v3, 0x7f070384

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/xueqiu/android/common/ShareActivity;->c:Z

    if-nez v3, :cond_3

    .line 91
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_3
    new-instance v2, Lcom/xueqiu/android/common/o;

    invoke-direct {v2}, Lcom/xueqiu/android/common/o;-><init>()V

    .line 97
    const v3, 0x7f0203d7

    const v4, 0x7f0203d8

    invoke-static {v3, v4}, Lcom/xueqiu/android/base/r;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->a:Landroid/graphics/drawable/Drawable;

    .line 98
    const v3, 0x7f070388

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->b:Ljava/lang/String;

    .line 99
    new-instance v3, Lcom/xueqiu/android/common/ShareActivity$5;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/ShareActivity$5;-><init>(Lcom/xueqiu/android/common/ShareActivity;)V

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->c:Landroid/view/View$OnClickListener;

    .line 109
    const v3, 0x7f070386

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 110
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_4
    new-instance v2, Lcom/xueqiu/android/common/o;

    invoke-direct {v2}, Lcom/xueqiu/android/common/o;-><init>()V

    .line 116
    const v3, 0x7f0203ce

    const v4, 0x7f0203cf

    invoke-static {v3, v4}, Lcom/xueqiu/android/base/r;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->a:Landroid/graphics/drawable/Drawable;

    .line 117
    const v3, 0x7f070389

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->b:Ljava/lang/String;

    .line 118
    new-instance v3, Lcom/xueqiu/android/common/ShareActivity$6;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/ShareActivity$6;-><init>(Lcom/xueqiu/android/common/ShareActivity;)V

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->c:Landroid/view/View$OnClickListener;

    .line 128
    const v3, 0x7f070380

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 129
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_5
    new-instance v2, Lcom/xueqiu/android/common/o;

    invoke-direct {v2}, Lcom/xueqiu/android/common/o;-><init>()V

    .line 134
    const v3, 0x7f0203d5

    const v4, 0x7f0203d6

    invoke-static {v3, v4}, Lcom/xueqiu/android/base/r;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->a:Landroid/graphics/drawable/Drawable;

    .line 135
    const v3, 0x7f07038a

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->b:Ljava/lang/String;

    .line 136
    new-instance v3, Lcom/xueqiu/android/common/ShareActivity$7;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/ShareActivity$7;-><init>(Lcom/xueqiu/android/common/ShareActivity;)V

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->c:Landroid/view/View$OnClickListener;

    .line 146
    const v3, 0x7f070387

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 147
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_6
    new-instance v2, Lcom/xueqiu/android/common/o;

    invoke-direct {v2}, Lcom/xueqiu/android/common/o;-><init>()V

    .line 153
    const v3, 0x7f0203d2

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->a:Landroid/graphics/drawable/Drawable;

    .line 154
    const v3, 0x7f07037c

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->b:Ljava/lang/String;

    .line 155
    new-instance v3, Lcom/xueqiu/android/common/ShareActivity$8;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/ShareActivity$8;-><init>(Lcom/xueqiu/android/common/ShareActivity;)V

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->c:Landroid/view/View$OnClickListener;

    .line 165
    const v3, 0x7f070382

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 166
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_7
    new-instance v2, Lcom/xueqiu/android/common/o;

    invoke-direct {v2}, Lcom/xueqiu/android/common/o;-><init>()V

    .line 172
    const v3, 0x7f0203d1

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->a:Landroid/graphics/drawable/Drawable;

    .line 173
    const v3, 0x7f07037b

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->b:Ljava/lang/String;

    .line 174
    new-instance v3, Lcom/xueqiu/android/common/ShareActivity$9;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/ShareActivity$9;-><init>(Lcom/xueqiu/android/common/ShareActivity;)V

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->c:Landroid/view/View$OnClickListener;

    .line 183
    iget-boolean v3, p0, Lcom/xueqiu/android/common/ShareActivity;->c:Z

    if-nez v3, :cond_8

    .line 184
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_8
    new-instance v2, Lcom/xueqiu/android/common/o;

    invoke-direct {v2}, Lcom/xueqiu/android/common/o;-><init>()V

    .line 189
    const v3, 0x7f0203d0

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->a:Landroid/graphics/drawable/Drawable;

    .line 190
    const v3, 0x7f070378

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->b:Ljava/lang/String;

    .line 191
    new-instance v3, Lcom/xueqiu/android/common/ShareActivity$10;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/ShareActivity$10;-><init>(Lcom/xueqiu/android/common/ShareActivity;)V

    iput-object v3, v2, Lcom/xueqiu/android/common/o;->c:Landroid/view/View$OnClickListener;

    .line 201
    const v3, 0x7f0700c0

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/xueqiu/android/common/ShareActivity;->c:Z

    if-nez v0, :cond_9

    .line 203
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_9
    iget-boolean v0, p0, Lcom/xueqiu/android/common/ShareActivity;->c:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/xueqiu/android/common/ShareActivity;->e:Z

    if-eqz v0, :cond_b

    .line 207
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 208
    const v0, 0x7f0203cb

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    new-instance v0, Lcom/xueqiu/android/common/ShareActivity$11;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/ShareActivity$11;-><init>(Lcom/xueqiu/android/common/ShareActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v3, p0, Lcom/xueqiu/android/common/ShareActivity;->b:Lcom/xueqiu/android/common/n;

    .line 1084
    iput-object v2, v3, Lcom/xueqiu/android/common/n;->d:Landroid/view/View;

    .line 1085
    const v0, 0x7f0800c2

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v0

    .line 1086
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_a

    .line 1087
    :goto_0
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    invoke-direct {v4, v7, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1088
    invoke-virtual {v4, v6, v6, v6, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1089
    invoke-virtual {v3, v2, v4}, Lcom/xueqiu/android/common/n;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1091
    invoke-virtual {v3, v1}, Lcom/xueqiu/android/common/n;->a(Ljava/util/ArrayList;)V

    .line 220
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/common/ShareActivity;->b:Lcom/xueqiu/android/common/n;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/ShareActivity;->setContentView(Landroid/view/View;)V

    .line 221
    return-void

    .line 1086
    :cond_a
    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 217
    :cond_b
    iget-object v0, p0, Lcom/xueqiu/android/common/ShareActivity;->b:Lcom/xueqiu/android/common/n;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/n;->a(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 261
    invoke-static {}, Lcom/xueqiu/android/common/w;->a()Lcom/xueqiu/android/common/w;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xueqiu/android/common/w;->a:Lcom/xueqiu/android/common/v;

    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 263
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/xueqiu/android/common/ShareActivity;->b:Lcom/xueqiu/android/common/n;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/n;->a()V

    .line 253
    const/4 v0, 0x1

    .line 255
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
