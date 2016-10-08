.class public final Lcom/xueqiu/android/community/c/d;
.super Lcom/xueqiu/android/common/c;
.source "HomeFragment.java"

# interfaces
.implements Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Request;
.implements Lcom/xueqiu/android/common/d;
.implements Lcom/xueqiu/android/common/t;
.implements Lcom/xueqiu/android/common/widget/l;
.implements Lcom/xueqiu/android/community/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/c;",
        "Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Request;",
        "Lcom/xueqiu/android/common/d;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;",
        "Lcom/xueqiu/android/common/widget/l;",
        "Lcom/xueqiu/android/community/l;"
    }
.end annotation


# instance fields
.field a:Lcom/xueqiu/android/community/widget/i;

.field private ak:Landroid/widget/FrameLayout;

.field b:Z

.field private c:J

.field private d:Lcom/xueqiu/android/community/a/ak;

.field private e:Lcom/xueqiu/android/community/model/UserGroup;

.field private f:Z

.field private g:Z

.field private h:Lcom/xueqiu/android/community/c/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 656
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 665
    iput-object v0, p0, Lcom/xueqiu/android/community/c/d;->a:Lcom/xueqiu/android/community/widget/i;

    .line 667
    iput-object v0, p0, Lcom/xueqiu/android/community/c/d;->d:Lcom/xueqiu/android/community/a/ak;

    .line 669
    iput-object v0, p0, Lcom/xueqiu/android/community/c/d;->e:Lcom/xueqiu/android/community/model/UserGroup;

    .line 671
    iput-boolean v1, p0, Lcom/xueqiu/android/community/c/d;->f:Z

    .line 673
    iput-boolean v1, p0, Lcom/xueqiu/android/community/c/d;->g:Z

    .line 675
    iput-boolean v1, p0, Lcom/xueqiu/android/community/c/d;->b:Z

    .line 677
    iput-object v0, p0, Lcom/xueqiu/android/community/c/d;->h:Lcom/xueqiu/android/community/c/e;

    .line 876
    return-void
.end method

.method private C()V
    .locals 4

    .prologue
    const v2, 0x7f0e016d

    const/4 v3, -0x1

    .line 777
    .line 4781
    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/d;->g:Z

    if-nez v0, :cond_1

    .line 4785
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->ak:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4786
    new-instance v1, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/d;->f()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;-><init>(Landroid/content/Context;)V

    .line 4787
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setId(I)V

    .line 4788
    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 4789
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4790
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->ak:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 4792
    new-instance v0, Lcom/xueqiu/android/community/widget/i;

    invoke-direct {v0, v1, p0}, Lcom/xueqiu/android/community/widget/i;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/c/d;->a:Lcom/xueqiu/android/community/widget/i;

    .line 4793
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->a:Lcom/xueqiu/android/community/widget/i;

    const v1, 0x7f070143

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/c/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/i;->a(Ljava/lang/CharSequence;)V

    .line 4795
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->d:Lcom/xueqiu/android/community/a/ak;

    if-nez v0, :cond_0

    .line 4796
    new-instance v0, Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/d;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/community/a/ak;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/c/d;->d:Lcom/xueqiu/android/community/a/ak;

    .line 4798
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->d:Lcom/xueqiu/android/community/a/ak;

    .line 5165
    iput-object p0, v0, Lcom/xueqiu/android/community/a/ak;->g:Lcom/xueqiu/android/community/l;

    .line 4799
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->a:Lcom/xueqiu/android/community/widget/i;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/d;->d:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/i;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 4801
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->a:Lcom/xueqiu/android/community/widget/i;

    new-instance v1, Lcom/xueqiu/android/community/c/d$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/d$4;-><init>(Lcom/xueqiu/android/community/c/d;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/i;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4819
    const-string v0, "timeline"

    .line 4821
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/d;->b(Ljava/lang/String;)V

    .line 778
    :cond_1
    return-void
.end method

.method private a(ZLcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    const v12, 0x7f0703b3

    const-wide/16 v6, 0x0

    .line 927
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->a:Lcom/xueqiu/android/community/widget/i;

    .line 12367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 927
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 930
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_a

    .line 931
    if-nez p1, :cond_2

    .line 932
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 933
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 934
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 936
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "normal"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 937
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    move-wide v4, v6

    .line 948
    :goto_1
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 949
    iget-object v1, p0, Lcom/xueqiu/android/community/c/d;->e:Lcom/xueqiu/android/community/model/UserGroup;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/UserGroup;->getGroupId()J

    move-result-wide v8

    .line 952
    const-wide/16 v10, 0x1

    cmp-long v1, v8, v10

    if-nez v1, :cond_3

    .line 954
    const-string v1, ""

    .line 13294
    :goto_2
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/xueqiu/android/base/b/aj;->a(Ljava/lang/String;JJJLcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    .line 977
    return-object v0

    .line 933
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move-wide v2, v6

    move-wide v4, v6

    .line 941
    goto :goto_1

    .line 942
    :cond_2
    iget-wide v4, p0, Lcom/xueqiu/android/community/c/d;->c:J

    .line 943
    cmp-long v0, v4, v6

    if-gtz v0, :cond_9

    .line 944
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v4

    move-wide v2, v6

    goto :goto_1

    .line 955
    :cond_3
    const-wide/16 v10, 0x2

    cmp-long v1, v8, v10

    if-nez v1, :cond_4

    .line 957
    invoke-virtual {p0, v12}, Lcom/xueqiu/android/community/c/d;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 958
    :cond_4
    const-wide/16 v10, 0x3

    cmp-long v1, v8, v10

    if-nez v1, :cond_5

    .line 960
    const v1, 0x7f0703b4

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/c/d;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 961
    :cond_5
    const-wide/16 v10, 0x4

    cmp-long v1, v8, v10

    if-nez v1, :cond_6

    .line 963
    const v1, 0x7f0703b5

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/c/d;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 964
    :cond_6
    const-wide/16 v10, 0x6

    cmp-long v1, v8, v10

    if-nez v1, :cond_7

    .line 966
    const v1, 0x7f0703b7

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/c/d;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 967
    :cond_7
    const-wide/16 v10, 0xd

    cmp-long v1, v8, v10

    if-nez v1, :cond_8

    .line 969
    const v1, 0x7f0703b6

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/c/d;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 972
    :cond_8
    iget-object v1, p0, Lcom/xueqiu/android/community/c/d;->e:Lcom/xueqiu/android/community/model/UserGroup;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/UserGroup;->getGroupId()J

    move-result-wide v6

    .line 973
    invoke-virtual {p0, v12}, Lcom/xueqiu/android/community/c/d;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 974
    iget-object v8, p0, Lcom/xueqiu/android/community/c/d;->a:Lcom/xueqiu/android/community/widget/i;

    const v9, 0x7f070144

    invoke-virtual {p0, v9}, Lcom/xueqiu/android/community/c/d;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/xueqiu/android/community/widget/i;->a(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    move-wide v2, v6

    goto/16 :goto_1

    :cond_a
    move-wide v2, v6

    move-wide v4, v6

    goto/16 :goto_1
.end method

.method public static a(Lcom/xueqiu/android/community/model/UserGroup;Z)Lcom/xueqiu/android/community/c/d;
    .locals 3

    .prologue
    .line 680
    new-instance v0, Lcom/xueqiu/android/community/c/d;

    invoke-direct {v0}, Lcom/xueqiu/android/community/c/d;-><init>()V

    .line 681
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 682
    const-string v2, "arg_user_group"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 683
    const-string v2, "arg_is_first_show"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 684
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/c/d;->e(Landroid/os/Bundle;)V

    .line 685
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/d;)Lcom/xueqiu/android/community/model/UserGroup;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->e:Lcom/xueqiu/android/community/model/UserGroup;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/c/d;)Lcom/xueqiu/android/community/a/ak;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->d:Lcom/xueqiu/android/community/a/ak;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/c/d;)Lcom/xueqiu/android/community/widget/i;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->a:Lcom/xueqiu/android/community/widget/i;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1080
    const-string v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xueqiu/android/community/c/d;->e:Lcom/xueqiu/android/community/model/UserGroup;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/UserGroup;->getGroupId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/community/c/d;)V
    .locals 0

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/d;->C()V

    return-void
.end method

.method static synthetic e(Lcom/xueqiu/android/community/c/d;)Z
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/d;->g:Z

    return v0
.end method

.method static synthetic f(Lcom/xueqiu/android/community/c/d;)Z
    .locals 1

    .prologue
    .line 656
    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/d;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/xueqiu/android/community/c/d;)Z
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/d;->f:Z

    return v0
.end method


# virtual methods
.method public final B_()V
    .locals 3

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->a:Lcom/xueqiu/android/community/widget/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->a:Lcom/xueqiu/android/community/widget/i;

    .line 15393
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 1058
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->a:Lcom/xueqiu/android/community/widget/i;

    .line 16242
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->m()V

    .line 1063
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x514

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 17053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 1064
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method

.method public final C_()V
    .locals 5

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/d;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/d;->g()Landroid/support/v4/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 757
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/community/c/d$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/d$3;-><init>(Lcom/xueqiu/android/community/c/d;)V

    const-wide/16 v2, 0x64

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    .line 771
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 733
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 734
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->ak:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 735
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/d;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/c/d;->ak:Landroid/widget/FrameLayout;

    .line 736
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->ak:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->ak:Landroid/widget/FrameLayout;

    return-object v0

    .line 737
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->ak:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->ak:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/d;->ak:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 912
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x514

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 11053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 913
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 915
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/community/c/d;->a(ZLcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 831
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x514

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 832
    const-string v1, "tab_name"

    const-string v2, "\u8f6c\u53d1"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 833
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 834
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 693
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 695
    if-eqz v0, :cond_0

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 696
    const-string v1, "arg_user_group"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/UserGroup;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/d;->e:Lcom/xueqiu/android/community/model/UserGroup;

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 697
    const-string v1, "arg_is_first_show"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/d;->b:Z

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->h:Lcom/xueqiu/android/community/c/e;

    if-nez v0, :cond_1

    .line 700
    new-instance v0, Lcom/xueqiu/android/community/c/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/community/c/e;-><init>(Lcom/xueqiu/android/community/c/d;B)V

    iput-object v0, p0, Lcom/xueqiu/android/community/c/d;->h:Lcom/xueqiu/android/community/c/e;

    .line 701
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/d;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/d;->h:Lcom/xueqiu/android/community/c/e;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.xueqiu.android.action.statusDelete"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 703
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/d;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.xueqiu.android.action.stockColorChanged"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/c/d$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/d$1;-><init>(Lcom/xueqiu/android/community/c/d;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/d;->a(Lrx/j;)V

    .line 713
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/d;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.xueqiu.android.action.fastScrollChanged"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/c/d$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/d$2;-><init>(Lcom/xueqiu/android/community/c/d;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/d;->a(Lrx/j;)V

    .line 722
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 745
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 746
    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/d;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/d;->g:Z

    if-nez v0, :cond_0

    .line 747
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/d;->C()V

    .line 748
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->a:Lcom/xueqiu/android/community/widget/i;

    .line 4225
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 749
    iput-boolean v1, p0, Lcom/xueqiu/android/community/c/d;->g:Z

    .line 750
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/d;->b:Z

    .line 752
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 852
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x514

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 853
    const-string v1, "card_id"

    invoke-virtual {v0, v1, p1}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 854
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 855
    return-void
.end method

.method public final a(Ljava/lang/String;JI)V
    .locals 4

    .prologue
    .line 869
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x514

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 870
    const-string v1, "card_id"

    invoke-virtual {v0, v1, p1}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string v1, "user_id"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string v1, "pos"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 873
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 874
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 859
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x514

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 860
    const-string v1, "card_id"

    invoke-virtual {v0, v1, p1}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v1, "recommend_id"

    invoke-virtual {v0, v1, p2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v1, "card_type"

    invoke-virtual {v0, v1, p3}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v1, "pos"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 864
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 865
    return-void
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/d;->g()Landroid/support/v4/a/k;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1031
    :cond_0
    :goto_0
    return-void

    .line 989
    :cond_1
    if-eqz p2, :cond_3

    .line 990
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 991
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->d:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ak;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 992
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    .line 993
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xueqiu/android/community/c/d;->e:Lcom/xueqiu/android/community/model/UserGroup;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/UserGroup;->getGroupId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/storage/DBManager;->queryTimeine(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 994
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->d:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ak;->a(Ljava/util/ArrayList;)V

    .line 995
    iget-wide v0, p0, Lcom/xueqiu/android/community/c/d;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 14076
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/d;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_next_max_id"

    invoke-direct {p0, v1}, Lcom/xueqiu/android/community/c/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 996
    iput-wide v0, p0, Lcom/xueqiu/android/community/c/d;->c:J

    .line 998
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->d:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ak;->notifyDataSetChanged()V

    .line 1002
    :cond_3
    if-nez p1, :cond_7

    .line 1003
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    :goto_1
    instance-of v1, v0, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;

    if-eqz v1, :cond_6

    .line 1007
    check-cast v0, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;

    .line 1008
    iget-object v1, p0, Lcom/xueqiu/android/community/c/d;->a:Lcom/xueqiu/android/community/widget/i;

    .line 14367
    iget-object v1, v1, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 1008
    invoke-virtual {v1}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 1016
    if-nez p3, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 1017
    :cond_4
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->getNextMaxId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/community/c/d;->c:J

    .line 1021
    :cond_5
    if-nez p3, :cond_6

    .line 1023
    iget-object v1, p0, Lcom/xueqiu/android/community/c/d;->d:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/ap;->a(Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;Lcom/xueqiu/android/community/a/ak;)V

    .line 1027
    :cond_6
    if-nez p3, :cond_0

    .line 1028
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/d;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/MainActivity;

    .line 14640
    iget-object v1, v0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Remind;->getStatus()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 14641
    iget-object v1, v0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Remind;->getStatus()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/model/RemindItem;->setCount(I)V

    .line 14642
    iget-object v1, v0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/MainActivity;->a(Lcom/xueqiu/android/community/model/Remind;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, p1

    goto :goto_1
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 920
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x514

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 12053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 921
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 923
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/community/c/d;->a(ZLcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 838
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x514

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 839
    const-string v1, "tab_name"

    const-string v2, "\u8bc4\u8bba"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 7053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 840
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 841
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->a:Lcom/xueqiu/android/community/widget/i;

    if-eqz v0, :cond_0

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    invoke-static {p1}, Lcom/xueqiu/android/base/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1070
    iget-object v1, p0, Lcom/xueqiu/android/community/c/d;->a:Lcom/xueqiu/android/community/widget/i;

    .line 17393
    iget-object v1, v1, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 1071
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/d;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 1070
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->a(Landroid/view/View;)V

    .line 1073
    :cond_0
    return-void
.end method

.method public final onRequest(Lcom/sina/weibo/sdk/api/share/BaseRequest;)V
    .locals 2

    .prologue
    .line 1052
    const-string v0, "HomeFragment"

    const-string v1, "receive request from sina weibo"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    return-void
.end method

.method public final q()V
    .locals 4

    .prologue
    .line 895
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/d;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_next_max_id"

    invoke-direct {p0, v1}, Lcom/xueqiu/android/community/c/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/xueqiu/android/community/c/d;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 896
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/d;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_next_max_id"

    invoke-direct {p0, v1}, Lcom/xueqiu/android/community/c/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/xueqiu/android/community/c/d;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 897
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->h:Lcom/xueqiu/android/community/c/e;

    if-eqz v0, :cond_0

    .line 898
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/d;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/d;->h:Lcom/xueqiu/android/community/c/e;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 900
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->q()V

    .line 901
    return-void
.end method

.method public final declared-synchronized u()V
    .locals 6

    .prologue
    .line 904
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->d:Lcom/xueqiu/android/community/a/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/c/d;->d:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ak;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 905
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xueqiu/android/community/c/d;->d:Lcom/xueqiu/android/community/a/ak;

    .line 906
    invoke-virtual {v2}, Lcom/xueqiu/android/community/a/ak;->a()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xueqiu/android/community/c/d;->d:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v4}, Lcom/xueqiu/android/community/a/ak;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x50

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/xueqiu/android/community/c/d;->e:Lcom/xueqiu/android/community/model/UserGroup;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/UserGroup;->getGroupId()J

    move-result-wide v2

    long-to-int v2, v2

    .line 905
    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/storage/DBManager;->insertTimeline(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    :cond_0
    monitor-exit p0

    return-void

    .line 904
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
