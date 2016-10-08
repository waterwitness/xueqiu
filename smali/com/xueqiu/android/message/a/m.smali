.class public final Lcom/xueqiu/android/message/a/m;
.super Landroid/widget/ArrayAdapter;
.source "GroupMemberAdapter.java"

# interfaces
.implements Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;",
        "Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/xueqiu/android/message/a/n;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private e:Lcom/d/a/b/f;

.field private f:Landroid/view/LayoutInflater;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private final h:I

.field private i:[I

.field private j:Lcom/d/a/b/a/f;

.field private k:Lcom/d/a/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/d/a/b/f;[ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/d/a/b/f;",
            "[I",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v1, 0x7f03016e

    .line 39
    invoke-direct {p0, p1, v1, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/message/a/m;->a:Z

    .line 40
    iput-object p1, p0, Lcom/xueqiu/android/message/a/m;->d:Landroid/content/Context;

    .line 41
    iput v1, p0, Lcom/xueqiu/android/message/a/m;->h:I

    .line 42
    iput-object p2, p0, Lcom/xueqiu/android/message/a/m;->e:Lcom/d/a/b/f;

    .line 43
    iput-object p3, p0, Lcom/xueqiu/android/message/a/m;->i:[I

    .line 44
    iput-object p4, p0, Lcom/xueqiu/android/message/a/m;->g:Ljava/util/List;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/m;->f:Landroid/view/LayoutInflater;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/message/a/m;->c:Ljava/util/Map;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 48
    new-instance v1, Lcom/d/a/b/a/f;

    invoke-direct {v1, v0, v0}, Lcom/d/a/b/a/f;-><init>(II)V

    iput-object v1, p0, Lcom/xueqiu/android/message/a/m;->j:Lcom/d/a/b/a/f;

    .line 49
    new-instance v0, Lcom/d/a/b/e;

    invoke-direct {v0}, Lcom/d/a/b/e;-><init>()V

    .line 1341
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/d/a/b/e;->h:Z

    .line 49
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/m;->k:Lcom/d/a/b/d;

    .line 50
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xueqiu/android/message/a/m;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getHeaderId(I)J
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/xueqiu/android/message/a/m;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    .line 5069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 5077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 140
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 141
    const-wide/16 v0, 0x2

    .line 143
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/a/m;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 122
    if-nez p2, :cond_0

    .line 123
    iget-object v0, p0, Lcom/xueqiu/android/message/a/m;->f:Landroid/view/LayoutInflater;

    const v1, 0x7f0300cc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 124
    invoke-static {p2}, Lcom/xueqiu/android/message/a/b;->a(Landroid/view/View;)Lcom/xueqiu/android/message/a/b;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/a/b;

    .line 127
    iget-object v1, v0, Lcom/xueqiu/android/message/a/b;->a:Landroid/widget/TextView;

    const-string v2, "aaa"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lcom/xueqiu/android/message/a/m;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 4077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 128
    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 129
    iget-object v0, v0, Lcom/xueqiu/android/message/a/b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/message/a/m;->d:Landroid/content/Context;

    const v2, 0x7f07023a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :goto_0
    return-object p2

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/message/a/m;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 131
    iget-object v0, v0, Lcom/xueqiu/android/message/a/b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/message/a/m;->d:Landroid/content/Context;

    const v2, 0x7f0701bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, v0, Lcom/xueqiu/android/message/a/b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/message/a/m;->d:Landroid/content/Context;

    const v2, 0x7f0701a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 66
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/a/m;->f:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/xueqiu/android/message/a/m;->h:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 68
    new-instance v1, Lcom/xueqiu/android/message/a/o;

    invoke-direct {v1, v3}, Lcom/xueqiu/android/message/a/o;-><init>(B)V

    .line 69
    iget-object v0, p0, Lcom/xueqiu/android/message/a/m;->i:[I

    aget v0, v0, v3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/o;->a:Landroid/widget/CheckBox;

    .line 70
    iget-object v0, p0, Lcom/xueqiu/android/message/a/m;->i:[I

    aget v0, v0, v10

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/o;->b:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/message/a/m;->i:[I

    aget v0, v0, v11

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/o;->c:Landroid/widget/TextView;

    .line 72
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/a/o;

    .line 75
    iget-object v1, p0, Lcom/xueqiu/android/message/a/m;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/User;

    .line 2081
    iget-object v2, v0, Lcom/xueqiu/android/message/a/o;->a:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/xueqiu/android/message/a/m;->c:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2082
    iget-object v4, v0, Lcom/xueqiu/android/message/a/o;->a:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/xueqiu/android/message/a/m;->a:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v6

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 3077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v8

    .line 2082
    cmp-long v2, v6, v8

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 2083
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v2

    sget-object v4, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    if-ne v2, v4, :cond_3

    const v2, 0x7f020483

    .line 2084
    :goto_1
    iget-object v4, v0, Lcom/xueqiu/android/message/a/o;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2085
    iget-object v4, p0, Lcom/xueqiu/android/message/a/m;->e:Lcom/d/a/b/f;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/xueqiu/android/message/a/m;->j:Lcom/d/a/b/a/f;

    iget-object v7, p0, Lcom/xueqiu/android/message/a/m;->k:Lcom/d/a/b/d;

    new-instance v8, Lcom/xueqiu/android/message/a/m$1;

    invoke-direct {v8, p0, v0, v2}, Lcom/xueqiu/android/message/a/m$1;-><init>(Lcom/xueqiu/android/message/a/m;Lcom/xueqiu/android/message/a/o;I)V

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/a/f;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 2103
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2104
    iget-object v0, v0, Lcom/xueqiu/android/message/a/o;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :goto_2
    return-object p2

    .line 2082
    :cond_2
    const/16 v2, 0x8

    goto :goto_0

    .line 2083
    :cond_3
    const v2, 0x7f020488

    goto :goto_1

    .line 2106
    :cond_4
    iget-object v0, v0, Lcom/xueqiu/android/message/a/o;->c:Landroid/widget/TextView;

    const-string v2, "%s(%s)"

    new-array v4, v11, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v10

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
