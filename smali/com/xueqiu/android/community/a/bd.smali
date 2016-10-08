.class public final Lcom/xueqiu/android/community/a/bd;
.super Landroid/widget/BaseAdapter;
.source "UsersAdapter.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/d/a/b/d;

.field private d:Lcom/d/a/b/f;

.field private e:Lcom/xueqiu/android/community/a/be;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const v1, 0x7f02010b

    .line 47
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/xueqiu/android/community/a/bd;->c:Lcom/d/a/b/d;

    .line 32
    iput-object v0, p0, Lcom/xueqiu/android/community/a/bd;->d:Lcom/d/a/b/f;

    .line 34
    iput-object v0, p0, Lcom/xueqiu/android/community/a/bd;->e:Lcom/xueqiu/android/community/a/be;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/a/bd;->a:Ljava/util/List;

    .line 48
    iput-object p1, p0, Lcom/xueqiu/android/community/a/bd;->b:Landroid/content/Context;

    .line 49
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/bd;->d:Lcom/d/a/b/f;

    .line 50
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 1293
    iput v1, v0, Lcom/d/a/b/e;->c:I

    .line 2270
    iput v1, v0, Lcom/d/a/b/e;->b:I

    .line 3248
    iput v1, v0, Lcom/d/a/b/e;->a:I

    .line 53
    new-instance v1, Lcom/d/a/b/c/c;

    const/high16 v2, 0x42400000    # 48.0f

    .line 54
    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/d/a/b/c/c;-><init>(I)V

    .line 3445
    iput-object v1, v0, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 54
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/bd;->c:Lcom/d/a/b/d;

    .line 55
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/community/a/bd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/community/a/bd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 98
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    .line 59
    if-nez p2, :cond_0

    .line 60
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030076

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 61
    new-instance v0, Lcom/xueqiu/android/community/a/bf;

    invoke-direct {v0, p0, p2}, Lcom/xueqiu/android/community/a/bf;-><init>(Lcom/xueqiu/android/community/a/bd;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/a/bd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 64
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/bf;

    .line 66
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 71
    :cond_1
    iget-object v3, p0, Lcom/xueqiu/android/community/a/bd;->d:Lcom/d/a/b/f;

    iget-object v4, v1, Lcom/xueqiu/android/community/a/bf;->a:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/xueqiu/android/community/a/bd;->c:Lcom/d/a/b/d;

    new-instance v6, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v6}, Lcom/xueqiu/android/base/util/o;-><init>()V

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 72
    iget-object v2, v1, Lcom/xueqiu/android/community/a/bf;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, v1, Lcom/xueqiu/android/community/a/bf;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getRecommendReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v3, v1, Lcom/xueqiu/android/community/a/bf;->d:Landroid/widget/ImageView;

    .line 4126
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4127
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowMe()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4128
    const v2, 0x7f020147

    .line 74
    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget-object v1, v1, Lcom/xueqiu/android/community/a/bf;->d:Landroid/widget/ImageView;

    new-instance v2, Lcom/xueqiu/android/community/a/bd$1;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/community/a/bd$1;-><init>(Lcom/xueqiu/android/community/a/bd;Lcom/xueqiu/android/community/model/User;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-object p2

    .line 4130
    :cond_2
    const v2, 0x7f020146

    goto :goto_0

    .line 4133
    :cond_3
    const v2, 0x7f020145

    goto :goto_0
.end method
