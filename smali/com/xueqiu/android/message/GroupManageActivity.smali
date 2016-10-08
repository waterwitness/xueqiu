.class public Lcom/xueqiu/android/message/GroupManageActivity;
.super Lcom/xueqiu/android/common/b;
.source "GroupManageActivity.java"


# instance fields
.field private j:Lcom/xueqiu/android/message/model/IMGroup;

.field private k:Landroid/widget/CheckBox;

.field private p:Landroid/widget/CheckBox;

.field private q:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/message/GroupManageActivity;)Lcom/xueqiu/android/message/model/IMGroup;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupManageActivity;->j:Lcom/xueqiu/android/message/model/IMGroup;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/message/GroupManageActivity;Lcom/xueqiu/android/message/model/IMGroup;)V
    .locals 3

    .prologue
    .line 1104
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/DBManager;->saveIMGroup(Lcom/xueqiu/android/message/model/IMGroup;)Z

    .line 1105
    iput-object p1, p0, Lcom/xueqiu/android/message/GroupManageActivity;->j:Lcom/xueqiu/android/message/model/IMGroup;

    .line 1106
    invoke-virtual {p0}, Lcom/xueqiu/android/message/GroupManageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.updateIMGroup"

    const-string v2, "extra_imgroup"

    invoke-static {v0, v1, v2, p1}, Lcom/xueqiu/android/base/util/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 27
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/message/GroupManageActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupManageActivity;->p:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/message/GroupManageActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupManageActivity;->q:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/message/GroupManageActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupManageActivity;->k:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 43
    const v0, 0x7f03016d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/GroupManageActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/xueqiu/android/message/GroupManageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_group"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/IMGroup;

    iput-object v0, p0, Lcom/xueqiu/android/message/GroupManageActivity;->j:Lcom/xueqiu/android/message/model/IMGroup;

    .line 45
    const v0, 0x7f0e056b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/GroupManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xueqiu/android/message/GroupManageActivity;->k:Landroid/widget/CheckBox;

    .line 46
    const v0, 0x7f0e056c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/GroupManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xueqiu/android/message/GroupManageActivity;->p:Landroid/widget/CheckBox;

    .line 47
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupManageActivity;->k:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xueqiu/android/message/GroupManageActivity;->j:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/IMGroup;->isAllowInviteUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupManageActivity;->p:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xueqiu/android/message/GroupManageActivity;->j:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/IMGroup;->isPub()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 49
    const v0, 0x7f0e056d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/GroupManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/message/GroupManageActivity;->q:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupManageActivity;->q:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xueqiu/android/message/GroupManageActivity;->j:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/IMGroup;->isPub()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 51
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/xueqiu/android/message/GroupManageActivity;->p:Landroid/widget/CheckBox;

    new-instance v2, Lcom/xueqiu/android/message/GroupManageActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/message/GroupManageActivity$1;-><init>(Lcom/xueqiu/android/message/GroupManageActivity;Lcom/xueqiu/android/base/b/ai;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v1, p0, Lcom/xueqiu/android/message/GroupManageActivity;->k:Landroid/widget/CheckBox;

    new-instance v2, Lcom/xueqiu/android/message/GroupManageActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/message/GroupManageActivity$2;-><init>(Lcom/xueqiu/android/message/GroupManageActivity;Lcom/xueqiu/android/base/b/ai;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 101
    return-void
.end method

.method public publishGroup(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupManageActivity;->j:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-static {p0, v0}, Lcom/xueqiu/android/message/b;->publishGroup(Landroid/app/Activity;Lcom/xueqiu/android/message/model/IMGroup;)V

    .line 111
    return-void
.end method
