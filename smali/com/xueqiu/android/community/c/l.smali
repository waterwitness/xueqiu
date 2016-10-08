.class public Lcom/xueqiu/android/community/c/l;
.super Lcom/xueqiu/android/common/c;
.source "PaidContainerFragment.java"


# instance fields
.field a:Ljava/lang/String;

.field private ak:Landroid/view/View;

.field private al:Landroid/view/View;

.field private am:Lcom/xueqiu/android/community/c/m;

.field private an:Lcom/xueqiu/android/community/c/m;

.field private ao:Z

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/ImageView;

.field d:I

.field e:I

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 36
    const-string v0, "question"

    iput-object v0, p0, Lcom/xueqiu/android/community/c/l;->a:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/l;->ao:Z

    return-void
.end method


# virtual methods
.method public final F_()V
    .locals 0

    .prologue
    .line 203
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->F_()V

    .line 204
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->f:Landroid/view/View;

    if-nez v0, :cond_0

    .line 102
    const v0, 0x7f030145

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/l;->f:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->f:Landroid/view/View;

    const v1, 0x7f0e04f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 104
    const v0, 0x7f0e04f8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/l;->g:Landroid/view/View;

    .line 105
    const v0, 0x7f0e04f9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/l;->h:Landroid/view/View;

    .line 106
    const v0, 0x7f0e00ce

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/l;->ak:Landroid/view/View;

    .line 107
    const v0, 0x7f0e000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/l;->al:Landroid/view/View;

    .line 108
    const v0, 0x7f0e04fa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/l;->b:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f0e04fb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/l;->c:Landroid/widget/ImageView;

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/l;->u()V

    .line 112
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->f:Landroid/view/View;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/l;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/l;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 1564
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 68
    if-eqz v0, :cond_1

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 69
    const-string v1, "page_type"

    const-string v2, "question"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/l;->a:Ljava/lang/String;

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 70
    const-string v1, "question_count"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/c/l;->d:I

    .line 4564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 71
    const-string v1, "comment_count"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/c/l;->e:I

    .line 5564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 72
    const-string v1, "is_show_hint"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/l;->ao:Z

    .line 74
    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 8122
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->g:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/community/c/l$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/l$1;-><init>(Lcom/xueqiu/android/community/c/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8134
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->h:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/community/c/l$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/l$2;-><init>(Lcom/xueqiu/android/community/c/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8146
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->ak:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/community/c/l$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/l$3;-><init>(Lcom/xueqiu/android/community/c/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8153
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->al:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/community/c/l$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/l$4;-><init>(Lcom/xueqiu/android/community/c/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method final a(Landroid/widget/ImageView;I)V
    .locals 2

    .prologue
    .line 231
    if-nez p2, :cond_0

    .line 232
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    :goto_0
    return-void

    .line 235
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/l;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/ay;->a(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 237
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    const v0, 0x7f020390

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 91
    .line 6564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 91
    if-eqz v0, :cond_0

    .line 7564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 92
    const-string v1, "page_type"

    iget-object v2, p0, Lcom/xueqiu/android/community/c/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->d(Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method public final o()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->o()V

    .line 79
    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/l;->ao:Z

    if-eqz v0, :cond_0

    .line 80
    iput-boolean v4, p0, Lcom/xueqiu/android/community/c/l;->ao:Z

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/l;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/common/GuideTutorialActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    const-string v1, "extra_which_view"

    sget-object v2, Lcom/xueqiu/android/common/model/GuideTutorialType;->PAY_ASK_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 83
    const-string v1, "extra_view_click_position"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x7f0e0253

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/l;->a(Landroid/content/Intent;)V

    .line 85
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/l;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const v1, 0x7f040007

    const v2, 0x7f040008

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/k;->overridePendingTransition(II)V

    .line 87
    :cond_0
    return-void
.end method

.method public final u()V
    .locals 6

    .prologue
    const v5, 0x7f0e04fc

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/l;->i()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    .line 170
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->a:Ljava/lang/String;

    const-string v2, "question"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/l;->i()Landroid/support/v4/a/q;

    move-result-object v0

    const-string v2, "questionFragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/c/m;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/l;->am:Lcom/xueqiu/android/community/c/m;

    .line 172
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/l;->i()Landroid/support/v4/a/q;

    move-result-object v0

    const-string v2, "commentFragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/c/m;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/l;->an:Lcom/xueqiu/android/community/c/m;

    .line 173
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->an:Lcom/xueqiu/android/community/c/m;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->an:Lcom/xueqiu/android/community/c/m;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/ac;->c(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->am:Lcom/xueqiu/android/community/c/m;

    if-nez v0, :cond_3

    .line 177
    invoke-static {v3}, Lcom/xueqiu/android/community/c/m;->b(I)Lcom/xueqiu/android/community/c/m;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/l;->am:Lcom/xueqiu/android/community/c/m;

    .line 178
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->am:Lcom/xueqiu/android/community/c/m;

    const-string v2, "questionFragment"

    invoke-virtual {v1, v5, v0, v2}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;Ljava/lang/String;)Landroid/support/v4/a/ac;

    .line 197
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/a/ac;->d()I

    .line 8207
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 8208
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 8209
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->a:Ljava/lang/String;

    const-string v1, "question"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8210
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->g:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 8212
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->a:Ljava/lang/String;

    const-string v1, "comment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8213
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 8215
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/xueqiu/android/community/c/l;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/community/c/l;->a(Landroid/widget/ImageView;I)V

    .line 8216
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->c:Landroid/widget/ImageView;

    iget v1, p0, Lcom/xueqiu/android/community/c/l;->e:I

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/community/c/l;->a(Landroid/widget/ImageView;I)V

    .line 199
    return-void

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->am:Lcom/xueqiu/android/community/c/m;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/ac;->d(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 181
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->am:Lcom/xueqiu/android/community/c/m;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/ac;->f(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    goto :goto_0

    .line 184
    :cond_4
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/l;->i()Landroid/support/v4/a/q;

    move-result-object v0

    const-string v2, "commentFragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/c/m;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/l;->an:Lcom/xueqiu/android/community/c/m;

    .line 185
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/l;->i()Landroid/support/v4/a/q;

    move-result-object v0

    const-string v2, "questionFragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/c/m;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/l;->am:Lcom/xueqiu/android/community/c/m;

    .line 186
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->am:Lcom/xueqiu/android/community/c/m;

    if-eqz v0, :cond_5

    .line 187
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->am:Lcom/xueqiu/android/community/c/m;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/ac;->c(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 189
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->an:Lcom/xueqiu/android/community/c/m;

    if-nez v0, :cond_6

    .line 190
    invoke-static {v4}, Lcom/xueqiu/android/community/c/m;->b(I)Lcom/xueqiu/android/community/c/m;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/l;->an:Lcom/xueqiu/android/community/c/m;

    .line 191
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->an:Lcom/xueqiu/android/community/c/m;

    const-string v2, "commentFragment"

    invoke-virtual {v1, v5, v0, v2}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;Ljava/lang/String;)Landroid/support/v4/a/ac;

    goto :goto_0

    .line 193
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->an:Lcom/xueqiu/android/community/c/m;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/ac;->d(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 194
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l;->an:Lcom/xueqiu/android/community/c/m;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/ac;->f(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    goto/16 :goto_0
.end method
