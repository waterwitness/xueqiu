.class public final Lcom/xueqiu/android/community/a/am;
.super Lcom/xueqiu/android/common/a/d;
.source "TodayTopicListAdapter.java"


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
.field private e:Lcom/d/a/b/f;

.field private f:Lcom/d/a/b/d;

.field private g:Lcom/d/a/b/f/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 34
    const v0, 0x7f030081

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;I)V

    .line 30
    iput-object v1, p0, Lcom/xueqiu/android/community/a/am;->f:Lcom/d/a/b/d;

    .line 31
    iput-object v1, p0, Lcom/xueqiu/android/community/a/am;->g:Lcom/d/a/b/f/d;

    .line 1089
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2089
    iget-object v1, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x7f0100be

    aput v3, v2, v4

    .line 38
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/community/a/am;->e:Lcom/d/a/b/f;

    .line 42
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v1

    .line 2258
    iput-object v0, v1, Lcom/d/a/b/e;->d:Landroid/graphics/drawable/Drawable;

    .line 2281
    iput-object v0, v1, Lcom/d/a/b/e;->e:Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-virtual {v1}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/am;->f:Lcom/d/a/b/d;

    .line 46
    new-instance v0, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v0}, Lcom/xueqiu/android/base/util/o;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/a/am;->g:Lcom/d/a/b/f/d;

    .line 47
    return-void
.end method


# virtual methods
.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/a/am;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 70
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 73
    new-instance v2, Lcom/xueqiu/android/community/a/an;

    invoke-direct {v2}, Lcom/xueqiu/android/community/a/an;-><init>()V

    .line 75
    const v1, 0x7f0e00d9

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/xueqiu/android/community/a/an;->a:Landroid/widget/TextView;

    .line 76
    const v1, 0x7f0e022c

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/xueqiu/android/community/a/an;->c:Landroid/widget/ImageView;

    .line 77
    const v1, 0x7f0e0249

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/xueqiu/android/community/a/an;->b:Landroid/widget/TextView;

    .line 78
    const v1, 0x7f0e0246

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/xueqiu/android/community/a/an;->d:Landroid/widget/TextView;

    .line 79
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 86
    :goto_0
    const/4 v2, 0x0

    .line 87
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getTopicTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 88
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getTopicTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 92
    :cond_0
    :goto_1
    iget-object v4, v1, Lcom/xueqiu/android/community/a/an;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getTopicPicThumbnail()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getTopicPicThumbnail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/xueqiu/android/community/a/am;->e:Lcom/d/a/b/f;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getTopicPicThumbnail()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/xueqiu/android/community/a/an;->c:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/xueqiu/android/community/a/am;->f:Lcom/d/a/b/d;

    iget-object v7, p0, Lcom/xueqiu/android/community/a/am;->g:Lcom/d/a/b/f/d;

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 98
    :cond_1
    iget-object v2, v1, Lcom/xueqiu/android/community/a/an;->d:Landroid/widget/TextView;

    .line 3089
    iget-object v4, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 98
    const v5, 0x7f0700a2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getCommentsCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, v1, Lcom/xueqiu/android/community/a/an;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-object v3

    .line 83
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/an;

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    goto :goto_1
.end method
