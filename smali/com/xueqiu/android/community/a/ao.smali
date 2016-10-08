.class public final Lcom/xueqiu/android/community/a/ao;
.super Lcom/xueqiu/android/common/a/d;
.source "TopicDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# instance fields
.field e:Lcom/d/a/b/d;

.field f:Lcom/d/a/b/d;

.field private g:I

.field private final h:Landroid/content/Context;

.field private i:J

.field private j:Lcom/d/a/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 6

    .prologue
    const/high16 v4, 0x41c00000    # 24.0f

    const v1, 0x7f02018f

    const v3, 0x7f020208

    .line 63
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/a/ao;->g:I

    .line 43
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 1293
    iput v1, v0, Lcom/d/a/b/e;->c:I

    .line 2270
    iput v1, v0, Lcom/d/a/b/e;->b:I

    .line 3248
    iput v1, v0, Lcom/d/a/b/e;->a:I

    .line 47
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ao;->e:Lcom/d/a/b/d;

    .line 49
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 3293
    iput v3, v0, Lcom/d/a/b/e;->c:I

    .line 4270
    iput v3, v0, Lcom/d/a/b/e;->b:I

    .line 5248
    iput v3, v0, Lcom/d/a/b/e;->a:I

    .line 52
    new-instance v1, Lcom/d/a/b/c/c;

    const/high16 v2, 0x41400000    # 12.0f

    .line 53
    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/d/a/b/c/c;-><init>(I)V

    .line 5445
    iput-object v1, v0, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 54
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ao;->f:Lcom/d/a/b/d;

    .line 56
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 6270
    iput v3, v0, Lcom/d/a/b/e;->b:I

    .line 6293
    iput v3, v0, Lcom/d/a/b/e;->c:I

    .line 7248
    iput v3, v0, Lcom/d/a/b/e;->a:I

    .line 59
    new-instance v1, Lcom/d/a/b/c/c;

    .line 60
    invoke-static {v4}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/d/a/b/c/c;-><init>(I)V

    .line 7445
    iput-object v1, v0, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 60
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ao;->j:Lcom/d/a/b/d;

    .line 64
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ao;->h:Landroid/content/Context;

    .line 65
    iput-wide p2, p0, Lcom/xueqiu/android/community/a/ao;->i:J

    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ao;->h:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 67
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 68
    invoke-static {v4}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/community/a/ao;->g:I

    .line 69
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v7, 0x4

    const/16 v4, 0x8

    const/4 v8, 0x0

    .line 74
    iget-wide v0, p0, Lcom/xueqiu/android/community/a/ao;->i:J

    const-wide/16 v2, 0x7

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 76
    if-nez p2, :cond_2

    .line 77
    new-instance v1, Lcom/xueqiu/android/community/a/ap;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/ap;-><init>(Lcom/xueqiu/android/community/a/ao;)V

    .line 8253
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ao;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300aa

    invoke-virtual {v0, v2, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 8254
    const v0, 0x7f0e02ba

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/ap;->a:Landroid/widget/LinearLayout;

    .line 8255
    const v0, 0x7f0e02b7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/ap;->b:Landroid/widget/LinearLayout;

    .line 8256
    const v0, 0x7f0e02bc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/community/a/ap;->c:Landroid/view/View;

    .line 8257
    const v0, 0x7f0e02b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/ap;->d:Landroid/widget/ImageView;

    .line 8258
    const v0, 0x7f0e02b9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/ap;->e:Landroid/widget/TextView;

    .line 8260
    const v0, 0x7f0e02bb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SnowBallTextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/ap;->f:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    .line 8261
    const v0, 0x7f0e01cf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/ap;->g:Landroid/widget/ImageView;

    .line 8262
    const v0, 0x7f0e01d0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/ap;->h:Landroid/widget/TextView;

    .line 8263
    const v0, 0x7f0e0209

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/ap;->i:Landroid/widget/TextView;

    .line 8264
    const v0, 0x7f0e01d3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SnowBallTextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/ap;->j:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    .line 8265
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 82
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/a/ao;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 9222
    iget-object v1, v2, Lcom/xueqiu/android/community/a/ap;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9223
    iget-object v1, v2, Lcom/xueqiu/android/community/a/ap;->c:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 9224
    iget-object v1, v2, Lcom/xueqiu/android/community/a/ap;->f:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getDescription()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/xueqiu/android/community/a/ap;->k:Lcom/xueqiu/android/community/a/ao;

    .line 10033
    iget-object v4, v4, Lcom/xueqiu/android/community/a/ao;->h:Landroid/content/Context;

    .line 9224
    iget-object v5, v2, Lcom/xueqiu/android/community/a/ap;->f:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    invoke-static {v3, v4, v5}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Landroid/widget/TextView;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setText(Ljava/lang/CharSequence;)V

    .line 9226
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getAnswers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getAnswers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 9227
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getAnswers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/Comment;

    .line 9228
    iget-object v3, v2, Lcom/xueqiu/android/community/a/ap;->j:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getText()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/xueqiu/android/community/a/ap;->k:Lcom/xueqiu/android/community/a/ao;

    .line 11033
    iget-object v5, v5, Lcom/xueqiu/android/community/a/ao;->h:Landroid/content/Context;

    .line 9228
    iget-object v6, v2, Lcom/xueqiu/android/community/a/ap;->f:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    invoke-static {v4, v5, v6}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Landroid/widget/TextView;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setText(Ljava/lang/CharSequence;)V

    .line 9229
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9230
    iget-object v0, v2, Lcom/xueqiu/android/community/a/ap;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9231
    iget-object v0, v2, Lcom/xueqiu/android/community/a/ap;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9233
    iget-object v0, v2, Lcom/xueqiu/android/community/a/ap;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9235
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/xueqiu/android/community/a/ap;->g:Landroid/widget/ImageView;

    iget-object v5, v2, Lcom/xueqiu/android/community/a/ap;->k:Lcom/xueqiu/android/community/a/ao;

    .line 12033
    iget-object v5, v5, Lcom/xueqiu/android/community/a/ao;->j:Lcom/d/a/b/d;

    .line 9235
    invoke-virtual {v0, v3, v4, v5}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 9236
    const-string v0, ""

    .line 9237
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getVerifiedDescription()Ljava/lang/String;

    move-result-object v3

    .line 12197
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 9237
    if-nez v3, :cond_3

    .line 9238
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getVerifiedDescription()Ljava/lang/String;

    move-result-object v0

    .line 9242
    :cond_0
    :goto_1
    iget-object v1, v2, Lcom/xueqiu/android/community/a/ap;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_1
    :goto_2
    return-object p2

    .line 80
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/ap;

    move-object v2, v0

    goto/16 :goto_0

    .line 9239
    :cond_3
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 13197
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 9239
    if-nez v3, :cond_0

    .line 9240
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 9244
    :cond_4
    iget-object v0, v2, Lcom/xueqiu/android/community/a/ap;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9245
    iget-object v0, v2, Lcom/xueqiu/android/community/a/ap;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 86
    :cond_5
    if-nez p2, :cond_b

    .line 87
    new-instance v1, Lcom/xueqiu/android/community/a/aq;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/aq;-><init>(Lcom/xueqiu/android/community/a/ao;)V

    .line 14100
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ao;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 14101
    const v2, 0x7f0300b9

    invoke-virtual {v0, v2, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 14102
    const v0, 0x7f0e02e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/aq;->d:Landroid/widget/TextView;

    .line 14103
    const v0, 0x7f0e02e8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/aq;->e:Landroid/widget/ImageView;

    .line 14104
    const v0, 0x7f0e02e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/aq;->a:Landroid/widget/ImageView;

    .line 14105
    const v0, 0x7f0e02e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/aq;->c:Landroid/widget/TextView;

    .line 14106
    const v0, 0x7f0e02e6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/aq;->b:Landroid/widget/TextView;

    .line 14107
    const v0, 0x7f0e02eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/aq;->g:Landroid/widget/TextView;

    .line 14108
    const v0, 0x7f0e02ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/aq;->f:Landroid/widget/TextView;

    .line 14109
    const v0, 0x7f0e02e5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/aq;->h:Landroid/widget/ImageView;

    .line 14110
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    :goto_3
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/a/ao;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 14125
    iget-object v2, v1, Lcom/xueqiu/android/community/a/aq;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14126
    iget-object v2, v1, Lcom/xueqiu/android/community/a/aq;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14127
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getPicType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    .line 14128
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getTopicPicHd()Ljava/lang/String;

    move-result-object v2

    .line 14129
    iget-object v3, v1, Lcom/xueqiu/android/community/a/aq;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 14130
    iget-object v3, v1, Lcom/xueqiu/android/community/a/aq;->a:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 14131
    iget-object v4, v1, Lcom/xueqiu/android/community/a/aq;->i:Lcom/xueqiu/android/community/a/ao;

    .line 15033
    iget v4, v4, Lcom/xueqiu/android/community/a/ao;->g:I

    .line 14131
    int-to-double v4, v4

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->proportion()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14132
    iget-object v4, v1, Lcom/xueqiu/android/community/a/aq;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14133
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v3

    iget-object v4, v1, Lcom/xueqiu/android/community/a/aq;->i:Lcom/xueqiu/android/community/a/ao;

    iget-object v4, v4, Lcom/xueqiu/android/community/a/ao;->e:Lcom/d/a/b/d;

    new-instance v5, Lcom/xueqiu/android/community/a/aq$1;

    invoke-direct {v5, v1}, Lcom/xueqiu/android/community/a/aq$1;-><init>(Lcom/xueqiu/android/community/a/aq;)V

    invoke-virtual {v3, v2, v4, v5}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 14158
    iget-object v2, v1, Lcom/xueqiu/android/community/a/aq;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14187
    :cond_6
    :goto_4
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getTopicTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 14188
    iget-object v2, v1, Lcom/xueqiu/android/community/a/aq;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getTopicTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14190
    :cond_7
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getTopicDesc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 14191
    iget-object v2, v1, Lcom/xueqiu/android/community/a/aq;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getTopicDesc()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/xueqiu/android/community/a/aq;->i:Lcom/xueqiu/android/community/a/ao;

    .line 16033
    iget-object v4, v4, Lcom/xueqiu/android/community/a/ao;->h:Landroid/content/Context;

    .line 14191
    invoke-static {v3, v4}, Lcom/xueqiu/android/base/util/ai;->b(Ljava/lang/CharSequence;Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14195
    :cond_8
    :goto_5
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 14196
    iget-object v2, v1, Lcom/xueqiu/android/community/a/aq;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14198
    :cond_9
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 14199
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 14200
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v3

    iget-object v4, v1, Lcom/xueqiu/android/community/a/aq;->e:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/xueqiu/android/community/a/aq;->i:Lcom/xueqiu/android/community/a/ao;

    iget-object v5, v5, Lcom/xueqiu/android/community/a/ao;->f:Lcom/d/a/b/d;

    new-instance v6, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v6}, Lcom/xueqiu/android/base/util/o;-><init>()V

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 14202
    :cond_a
    iget-object v2, v1, Lcom/xueqiu/android/community/a/aq;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getCommentsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14203
    iget-object v1, v1, Lcom/xueqiu/android/community/a/aq;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getRetweetsCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 90
    :cond_b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/aq;

    move-object v1, v0

    goto/16 :goto_3

    .line 14159
    :cond_c
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getPicType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 14160
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getTopicPic()Ljava/lang/String;

    move-result-object v2

    .line 14161
    iget-object v3, v1, Lcom/xueqiu/android/community/a/aq;->h:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 14162
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v3

    iget-object v4, v1, Lcom/xueqiu/android/community/a/aq;->i:Lcom/xueqiu/android/community/a/ao;

    iget-object v4, v4, Lcom/xueqiu/android/community/a/ao;->e:Lcom/d/a/b/d;

    new-instance v5, Lcom/xueqiu/android/community/a/aq$2;

    invoke-direct {v5, v1}, Lcom/xueqiu/android/community/a/aq$2;-><init>(Lcom/xueqiu/android/community/a/aq;)V

    invoke-virtual {v3, v2, v4, v5}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 14185
    iget-object v2, v1, Lcom/xueqiu/android/community/a/aq;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 14192
    :cond_d
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 14193
    iget-object v2, v1, Lcom/xueqiu/android/community/a/aq;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getDescription()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/xueqiu/android/community/a/aq;->i:Lcom/xueqiu/android/community/a/ao;

    .line 17033
    iget-object v4, v4, Lcom/xueqiu/android/community/a/ao;->h:Landroid/content/Context;

    .line 14193
    invoke-static {v3, v4}, Lcom/xueqiu/android/base/util/ai;->b(Ljava/lang/CharSequence;Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method
