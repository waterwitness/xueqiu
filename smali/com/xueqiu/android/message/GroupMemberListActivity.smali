.class public Lcom/xueqiu/android/message/GroupMemberListActivity;
.super Lcom/xueqiu/android/common/b;
.source "GroupMemberListActivity.java"


# instance fields
.field j:Lcom/xueqiu/android/message/a/m;

.field k:Lcom/xueqiu/android/message/model/IMGroup;

.field private p:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/xueqiu/android/base/b/ai;

.field private s:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 156
    new-instance v0, Lcom/xueqiu/android/message/GroupMemberListActivity$4;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/message/GroupMemberListActivity$4;-><init>(Lcom/xueqiu/android/message/GroupMemberListActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->s:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/message/GroupMemberListActivity;)Lcom/xueqiu/android/message/a/m;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->j:Lcom/xueqiu/android/message/a/m;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f03016f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/GroupMemberListActivity;->setContentView(I)V

    .line 65
    const v0, 0x7f0e0131

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/GroupMemberListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->p:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    .line 67
    invoke-virtual {p0}, Lcom/xueqiu/android/message/GroupMemberListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_member_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 68
    invoke-virtual {p0}, Lcom/xueqiu/android/message/GroupMemberListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_group"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/IMGroup;

    iput-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->k:Lcom/xueqiu/android/message/model/IMGroup;

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 74
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v6

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 1077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v8

    .line 74
    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    move-object v1, v0

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v6

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 2077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v8

    .line 76
    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 77
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->q:Ljava/util/List;

    .line 84
    if-eqz v1, :cond_4

    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->q:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->q:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/xueqiu/android/message/a/m;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iget-object v3, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->q:Ljava/util/List;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/xueqiu/android/message/a/m;-><init>(Landroid/content/Context;Lcom/d/a/b/f;[ILjava/util/List;)V

    iput-object v1, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->j:Lcom/xueqiu/android/message/a/m;

    .line 91
    iget-object v1, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->j:Lcom/xueqiu/android/message/a/m;

    new-instance v2, Lcom/xueqiu/android/message/GroupMemberListActivity$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/GroupMemberListActivity$1;-><init>(Lcom/xueqiu/android/message/GroupMemberListActivity;)V

    .line 2168
    iput-object v2, v1, Lcom/xueqiu/android/message/a/m;->b:Lcom/xueqiu/android/message/a/n;

    .line 97
    iget-object v1, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->p:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v2, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->j:Lcom/xueqiu/android/message/a/m;

    invoke-virtual {v1, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;)V

    .line 99
    iget-object v1, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->p:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    new-instance v2, Lcom/xueqiu/android/message/GroupMemberListActivity$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/GroupMemberListActivity$2;-><init>(Lcom/xueqiu/android/message/GroupMemberListActivity;)V

    invoke-virtual {v1, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    iget-object v1, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->p:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    new-instance v2, Lcom/d/a/b/f/c;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v0, v3, v4}, Lcom/d/a/b/f/c;-><init>(Lcom/d/a/b/f;ZZ)V

    invoke-virtual {v1, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->k:Lcom/xueqiu/android/message/model/IMGroup;

    if-eqz v0, :cond_5

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->k:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getMasterId()J

    move-result-wide v0

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 3077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 116
    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 117
    const v0, 0x7f0701bc

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/GroupMemberListActivity;->setTitle(I)V

    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->p:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWrappedList()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->s:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_5
    :goto_1
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->r:Lcom/xueqiu/android/base/b/ai;

    .line 128
    const-string v0, "IM_group_member"

    .line 3088
    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    return-void

    .line 120
    :cond_6
    const v0, 0x7f0701c7

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/GroupMemberListActivity;->setTitle(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 123
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 90
    nop

    :array_0
    .array-data 4
        0x7f0e056e
        0x7f0e0568
        0x7f0e0569
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->k:Lcom/xueqiu/android/message/model/IMGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->k:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getMasterId()J

    move-result-wide v0

    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 4077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 133
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 134
    const v0, 0x7f0701f1

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/GroupMemberListActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/GroupMemberListActivity$3;-><init>(Lcom/xueqiu/android/message/GroupMemberListActivity;)V

    .line 135
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity;->j:Lcom/xueqiu/android/message/a/m;

    .line 4156
    iget-boolean v0, v0, Lcom/xueqiu/android/message/a/m;->a:Z

    .line 150
    if-eqz v0, :cond_1

    const v0, 0x7f020262

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 134
    invoke-static {v0, v1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 153
    :cond_0
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 150
    :cond_1
    const v0, 0x7f02032b

    goto :goto_0
.end method
