.class public Lcom/xueqiu/android/message/TalkProfileActivity;
.super Lcom/xueqiu/android/common/b;
.source "TalkProfileActivity.java"


# instance fields
.field private A:Landroid/widget/CheckBox;

.field private B:Landroid/widget/CheckBox;

.field private C:Landroid/widget/CheckBox;

.field private D:Landroid/widget/Button;

.field private E:Landroid/widget/Button;

.field private F:Lcom/xueqiu/android/base/storage/DBManager;

.field private G:Z

.field private H:Lcom/xueqiu/android/message/model/IMGroup;

.field private I:Lcom/xueqiu/android/message/client/MessageService;

.field private J:Landroid/content/ServiceConnection;

.field private K:Landroid/content/BroadcastReceiver;

.field private L:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public j:Landroid/view/View;

.field public k:Landroid/view/View;

.field public p:Landroid/view/View;

.field private q:Lcom/xueqiu/android/message/model/Talk;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/Button;

.field private v:Landroid/widget/Button;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/Button;

.field private y:Landroid/view/ViewGroup;

.field private z:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 113
    new-instance v0, Lcom/xueqiu/android/message/TalkProfileActivity$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/message/TalkProfileActivity$1;-><init>(Lcom/xueqiu/android/message/TalkProfileActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->J:Landroid/content/ServiceConnection;

    .line 299
    new-instance v0, Lcom/xueqiu/android/message/TalkProfileActivity$14;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/message/TalkProfileActivity$14;-><init>(Lcom/xueqiu/android/message/TalkProfileActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->K:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/message/TalkProfileActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->z:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/message/client/MessageService;)Lcom/xueqiu/android/message/client/MessageService;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->I:Lcom/xueqiu/android/message/client/MessageService;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/message/model/IMGroup;)V
    .locals 3

    .prologue
    .line 8455
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/DBManager;->saveIMGroup(Lcom/xueqiu/android/message/model/IMGroup;)Z

    .line 8456
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->H:Lcom/xueqiu/android/message/model/IMGroup;

    .line 8457
    invoke-virtual {p0}, Lcom/xueqiu/android/message/TalkProfileActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.updateIMGroup"

    const-string v2, "extra_imgroup"

    invoke-static {v0, v1, v2, p1}, Lcom/xueqiu/android/base/util/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/message/model/Talk;)V
    .locals 3

    .prologue
    .line 11615
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11616
    const-string v1, "talk"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 11617
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 11619
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.talks"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11620
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11621
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11622
    const-string v2, "extra_talks"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 11623
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 11625
    invoke-virtual {p0}, Lcom/xueqiu/android/message/TalkProfileActivity;->finish()V

    .line 61
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/message/TalkProfileActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->A:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/model/Talk;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/client/MessageService;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->I:Lcom/xueqiu/android/message/client/MessageService;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/model/IMGroup;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->H:Lcom/xueqiu/android/message/model/IMGroup;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/message/TalkProfileActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->B:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/message/TalkProfileActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->C:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/message/TalkProfileActivity;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->y:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/message/TalkProfileActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->u:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic j(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/base/storage/DBManager;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->F:Lcom/xueqiu/android/base/storage/DBManager;

    return-object v0
.end method

.method static synthetic k(Lcom/xueqiu/android/message/TalkProfileActivity;)V
    .locals 8

    .prologue
    .line 61
    .line 8629
    invoke-virtual {p0}, Lcom/xueqiu/android/message/TalkProfileActivity;->h()Landroid/app/Dialog;

    .line 8630
    iget-boolean v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->G:Z

    if-eqz v0, :cond_0

    .line 9180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 8631
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->H:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/message/TalkProfileActivity$8;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/message/TalkProfileActivity$8;-><init>(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 9263
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->k:Lcom/xueqiu/android/base/b/d;

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/d;->b(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 8631
    :goto_0
    return-void

    .line 10180
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 8648
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->H:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v2

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v4, 0x0

    .line 11069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 11077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v6

    .line 8648
    aput-wide v6, v1, v4

    new-instance v4, Lcom/xueqiu/android/message/TalkProfileActivity$9;

    invoke-direct {v4, p0, p0}, Lcom/xueqiu/android/message/TalkProfileActivity$9;-><init>(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/xueqiu/android/base/b/ai;->a(J[JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/xueqiu/android/message/model/IMGroup;)V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 321
    invoke-virtual {p0}, Lcom/xueqiu/android/message/TalkProfileActivity;->getApplication()Landroid/app/Application;

    .line 3180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 322
    iget-object v4, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v4

    new-instance v6, Lcom/xueqiu/android/message/TalkProfileActivity$15;

    invoke-direct {v6, p0, p0}, Lcom/xueqiu/android/message/TalkProfileActivity$15;-><init>(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v4, v5, v6}, Lcom/xueqiu/android/base/b/ai;->q(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 337
    if-nez p1, :cond_0

    .line 338
    const-string v0, "\u7fa4\u7ec4\u4e0d\u5b58\u5728\u6216\u8005\u5df2\u7ecf\u88ab\u5220\u9664\uff01"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 450
    :goto_0
    return-void

    .line 341
    :cond_0
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->H:Lcom/xueqiu/android/message/model/IMGroup;

    .line 342
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->H:Lcom/xueqiu/android/message/model/IMGroup;

    iget-object v4, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->F:Lcom/xueqiu/android/base/storage/DBManager;

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->getMasterId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/message/model/IMGroup;->setMaster(Lcom/xueqiu/android/community/model/User;)V

    .line 343
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->r:Landroid/widget/TextView;

    const-string v4, "%s(%d/%d)"

    new-array v5, v12, [Ljava/lang/Object;

    const v6, 0x7f0701b5

    .line 344
    invoke-virtual {p0, v6}, Lcom/xueqiu/android/message/TalkProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 345
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    .line 346
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->getLimitCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    .line 343
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->u:Landroid/widget/Button;

    new-instance v4, Lcom/xueqiu/android/message/TalkProfileActivity$16;

    invoke-direct {v4, p0, p1}, Lcom/xueqiu/android/message/TalkProfileActivity$16;-><init>(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/message/model/IMGroup;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->H:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getMaster()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->u:Landroid/widget/Button;

    const-string v4, "\u7fa4\u4e3b\uff1a%s"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->H:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v6}, Lcom/xueqiu/android/message/model/IMGroup;->getMaster()Lcom/xueqiu/android/community/model/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 373
    :goto_1
    iget-object v4, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->v:Landroid/widget/Button;

    const-string v5, "\u7fa4\u540d\uff1a%s"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->isEmptyName()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u672a\u547d\u540d"

    :goto_2
    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->v:Landroid/widget/Button;

    new-instance v4, Lcom/xueqiu/android/message/TalkProfileActivity$2;

    invoke-direct {v4, p0, p1}, Lcom/xueqiu/android/message/TalkProfileActivity$2;-><init>(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/message/model/IMGroup;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 5077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 389
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->getMasterId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->G:Z

    .line 392
    invoke-virtual {p0}, Lcom/xueqiu/android/message/TalkProfileActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 396
    iget-boolean v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->G:Z

    if-eqz v0, :cond_6

    .line 397
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->w:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/xueqiu/android/message/TalkProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0701c2

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 398
    const v0, 0x7f0701a9

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 399
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->B:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->H:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v6}, Lcom/xueqiu/android/message/model/IMGroup;->isPub()Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 400
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->C:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->H:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v6}, Lcom/xueqiu/android/message/model/IMGroup;->isAllowInviteUser()Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 401
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object v6, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->x:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->H:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->isPub()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_4
    invoke-virtual {v6, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iget-object v3, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->j:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 405
    iget-object v6, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->j:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->j:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    .line 406
    iget-object v8, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->H:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v8}, Lcom/xueqiu/android/message/model/IMGroup;->isPub()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 407
    iget-object v8, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->j:Landroid/view/View;

    const v9, 0x7f0100f2

    invoke-virtual {v5, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 411
    :goto_5
    iget-object v8, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->j:Landroid/view/View;

    invoke-virtual {v8, v3, v7, v6, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 412
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->r:Landroid/widget/TextView;

    const-string v3, "%s(%d/%d)"

    new-array v6, v12, [Ljava/lang/Object;

    const v7, 0x7f0701bc

    invoke-virtual {p0, v7}, Lcom/xueqiu/android/message/TalkProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v7, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->H:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v7}, Lcom/xueqiu/android/message/model/IMGroup;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->H:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/IMGroup;->getLimitCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v11

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v4

    .line 434
    :goto_6
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 436
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 438
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->w:Landroid/widget/Button;

    new-instance v2, Lcom/xueqiu/android/message/TalkProfileActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity$3;-><init>(Lcom/xueqiu/android/message/TalkProfileActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 4180
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 358
    iget-object v4, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->H:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/IMGroup;->getMasterId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/xueqiu/android/message/TalkProfileActivity$17;

    invoke-direct {v5, p0, p0}, Lcom/xueqiu/android/message/TalkProfileActivity$17;-><init>(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 4934
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5}, Lcom/xueqiu/android/base/b/ai;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto/16 :goto_1

    .line 373
    :cond_2
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->getName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 389
    goto/16 :goto_3

    :cond_4
    move v0, v3

    .line 402
    goto/16 :goto_4

    .line 409
    :cond_5
    iget-object v8, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->j:Landroid/view/View;

    const v9, 0x7f0100f0

    invoke-virtual {v5, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 414
    :cond_6
    const v0, 0x7f0701ad

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 415
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 418
    iget-object v6, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->E:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->H:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->isAllowInviteUser()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_7
    invoke-virtual {v6, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 419
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->isPub()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 420
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v3

    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v6

    .line 421
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v7

    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v8

    .line 422
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->x:Landroid/widget/Button;

    const v9, 0x7f0100f1

    invoke-virtual {v5, v11, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 424
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 425
    invoke-virtual {p0}, Lcom/xueqiu/android/message/TalkProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080085

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 426
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 427
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 432
    :goto_8
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->r:Landroid/widget/TextView;

    const-string v3, "%s(%d/%d)"

    new-array v6, v12, [Ljava/lang/Object;

    const v7, 0x7f0701c7

    invoke-virtual {p0, v7}, Lcom/xueqiu/android/message/TalkProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v7, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->H:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v7}, Lcom/xueqiu/android/message/model/IMGroup;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->H:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/IMGroup;->getLimitCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v11

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v4

    goto/16 :goto_6

    :cond_7
    move v0, v3

    .line 418
    goto/16 :goto_7

    .line 429
    :cond_8
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->p:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 392
    nop

    :array_0
    .array-data 4
        0x7f0100f0
        0x7f0100f2
        0x7f0100f1
        0x7f0100f3
    .end array-data
.end method

.method public addMember(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 461
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    .line 462
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/xueqiu/android/message/TalkProfileActivity;->h()Landroid/app/Dialog;

    .line 5180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/message/TalkProfileActivity$4;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/message/TalkProfileActivity$4;-><init>(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->p(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 493
    :goto_0
    return-void

    .line 488
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/message/SelectUserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 489
    new-array v1, v6, [J

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v3}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 490
    const-string v2, "exclude_user_ids"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 491
    invoke-virtual {p0, v0, v6}, Lcom/xueqiu/android/message/TalkProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public manageGroup(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 505
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/message/GroupManageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 506
    const-string v1, "extra_group"

    iget-object v2, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->H:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 507
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 508
    return-void
.end method

.method public nameGroup(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 496
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/message/GroupCreateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 497
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 498
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 550
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 551
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 552
    const-string v0, "select_user_list"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 553
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/message/TalkProfileActivity;->getApplication()Landroid/app/Application;

    .line 557
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [J

    move v1, v2

    .line 558
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 559
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v6

    aput-wide v6, v4, v1

    .line 558
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 562
    array-length v0, v4

    if-lez v0, :cond_3

    .line 7180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 563
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/message/TalkProfileActivity$6;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/message/TalkProfileActivity$6;-><init>(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 7311
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->k:Lcom/xueqiu/android/base/b/d;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/xueqiu/android/base/b/d;->a(J[JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 607
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/xueqiu/android/message/TalkProfileActivity;->finish()V

    goto :goto_0

    .line 579
    :cond_4
    array-length v0, v4

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    .line 580
    :goto_3
    array-length v1, v4

    if-ge v2, v1, :cond_5

    .line 581
    aget-wide v6, v4, v2

    aput-wide v6, v0, v2

    .line 580
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 583
    :cond_5
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 8180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 585
    const-string v2, ""

    const-string v3, "\u7fa4\u7b80\u4ecb"

    new-instance v4, Lcom/xueqiu/android/message/TalkProfileActivity$7;

    invoke-direct {v4, p0, p0}, Lcom/xueqiu/android/message/TalkProfileActivity$7;-><init>(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;[JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/16 v6, 0x8

    .line 127
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/xueqiu/android/message/client/MessageService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->J:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v2, v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 129
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->F:Lcom/xueqiu/android/base/storage/DBManager;

    .line 130
    const v0, 0x7f03017c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->setContentView(I)V

    .line 131
    invoke-virtual {p0}, Lcom/xueqiu/android/message/TalkProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_talk"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    .line 132
    const v0, 0x7f0e04dc

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->r:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0e0581

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->s:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0e04de

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->u:Landroid/widget/Button;

    .line 135
    const v0, 0x7f0e0582

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->v:Landroid/widget/Button;

    .line 136
    const v0, 0x7f0e056d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->x:Landroid/widget/Button;

    .line 137
    const v0, 0x7f0e058a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->w:Landroid/widget/Button;

    .line 138
    const v0, 0x7f0e04dd

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->y:Landroid/view/ViewGroup;

    .line 139
    const v0, 0x7f0e0584

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->A:Landroid/widget/CheckBox;

    .line 140
    const v0, 0x7f0e0583

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->z:Landroid/widget/CheckBox;

    .line 141
    const v0, 0x7f0e0589

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->D:Landroid/widget/Button;

    .line 142
    const v0, 0x7f0e0580

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->E:Landroid/widget/Button;

    .line 143
    const v0, 0x7f0e014b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->t:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f0e0586

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->B:Landroid/widget/CheckBox;

    .line 145
    const v0, 0x7f0e0585

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->j:Landroid/view/View;

    .line 146
    const v0, 0x7f0e0588

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->k:Landroid/view/View;

    .line 147
    const v0, 0x7f0e056b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->C:Landroid/widget/CheckBox;

    .line 148
    const v0, 0x7f0e0587

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->p:Landroid/view/View;

    .line 150
    invoke-virtual {p0}, Lcom/xueqiu/android/message/TalkProfileActivity;->getApplication()Landroid/app/Application;

    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->t:Landroid/widget/TextView;

    const v2, 0x7f0701c6

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/message/TalkProfileActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->u:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->v:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->p:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->F:Lcom/xueqiu/android/base/storage/DBManager;

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 3077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 163
    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    .line 164
    iget-object v2, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->F:Lcom/xueqiu/android/base/storage/DBManager;

    iget-object v3, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v3}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    .line 165
    iget-object v3, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->F:Lcom/xueqiu/android/base/storage/DBManager;

    iget-object v4, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/base/storage/DBManager;->isFriend(J)Z

    .line 166
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->y:Landroid/view/ViewGroup;

    invoke-static {v3, v0}, Lcom/xueqiu/android/message/b;->a(Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 170
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 171
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->y:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->E:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 184
    :cond_0
    :goto_0
    new-instance v0, Lcom/xueqiu/android/message/TalkProfileActivity$10;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/message/TalkProfileActivity$10;-><init>(Lcom/xueqiu/android/message/TalkProfileActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->L:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 210
    iget-object v2, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->z:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isNotify()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 211
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->A:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->isTop()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 213
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->z:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->L:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 214
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->A:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->L:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 216
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->B:Landroid/widget/CheckBox;

    new-instance v2, Lcom/xueqiu/android/message/TalkProfileActivity$11;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity$11;-><init>(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/base/b/ai;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->C:Landroid/widget/CheckBox;

    new-instance v2, Lcom/xueqiu/android/message/TalkProfileActivity$12;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity$12;-><init>(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/base/b/ai;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->D:Landroid/widget/Button;

    new-instance v1, Lcom/xueqiu/android/message/TalkProfileActivity$13;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/TalkProfileActivity$13;-><init>(Lcom/xueqiu/android/message/TalkProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    return-void

    .line 180
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.xueqiu.android.action.updateIMGroup"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->K:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 210
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 294
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->K:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 295
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->J:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 296
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onDestroy()V

    .line 297
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 313
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onResume()V

    .line 314
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->F:Lcom/xueqiu/android/base/storage/DBManager;

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->getIMGroupById(J)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v0

    .line 316
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->a(Lcom/xueqiu/android/message/model/IMGroup;)V

    .line 318
    :cond_0
    return-void
.end method

.method public publishGroup(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->H:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-static {p0, v0}, Lcom/xueqiu/android/message/b;->publishGroup(Landroid/app/Activity;Lcom/xueqiu/android/message/model/IMGroup;)V

    .line 502
    return-void
.end method

.method public toGroupMembers(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 511
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    .line 512
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/xueqiu/android/message/TalkProfileActivity;->h()Landroid/app/Dialog;

    .line 6180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/message/TalkProfileActivity$5;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/message/TalkProfileActivity$5;-><init>(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->p(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 546
    :goto_0
    return-void

    .line 536
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 537
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->F:Lcom/xueqiu/android/base/storage/DBManager;

    .line 7069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 7077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 537
    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    .line 538
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->F:Lcom/xueqiu/android/base/storage/DBManager;

    iget-object v2, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    .line 540
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 542
    const-string v2, "extra_member_list"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 543
    const-string v0, "extra_group"

    iget-object v2, p0, Lcom/xueqiu/android/message/TalkProfileActivity;->H:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 544
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
