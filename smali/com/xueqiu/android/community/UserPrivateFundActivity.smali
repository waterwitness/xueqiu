.class public Lcom/xueqiu/android/community/UserPrivateFundActivity;
.super Lcom/xueqiu/android/common/b;
.source "UserPrivateFundActivity.java"


# instance fields
.field private j:Lcom/xueqiu/android/community/model/User;

.field private k:Landroid/widget/ListView;

.field private p:Lcom/xueqiu/android/community/a/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/UserPrivateFundActivity;)Lcom/xueqiu/android/community/a/m;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xueqiu/android/community/UserPrivateFundActivity;->p:Lcom/xueqiu/android/community/a/m;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/UserPrivateFundActivity;)Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xueqiu/android/community/UserPrivateFundActivity;->j:Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserPrivateFundActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UserPrivateFundActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    iput-object v0, p0, Lcom/xueqiu/android/community/UserPrivateFundActivity;->j:Lcom/xueqiu/android/community/model/User;

    .line 39
    const v0, 0x7f0e01b1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserPrivateFundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xueqiu/android/community/UserPrivateFundActivity;->k:Landroid/widget/ListView;

    .line 40
    new-instance v0, Lcom/xueqiu/android/community/a/m;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/a/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/UserPrivateFundActivity;->p:Lcom/xueqiu/android/community/a/m;

    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/community/UserPrivateFundActivity;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserPrivateFundActivity;->p:Lcom/xueqiu/android/community/a/m;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    iget-object v0, p0, Lcom/xueqiu/android/community/UserPrivateFundActivity;->k:Landroid/widget/ListView;

    new-instance v1, Lcom/xueqiu/android/community/UserPrivateFundActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserPrivateFundActivity$1;-><init>(Lcom/xueqiu/android/community/UserPrivateFundActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%s\u7684\u79c1\u52df\u57fa\u91d1"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xueqiu/android/community/UserPrivateFundActivity;->j:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserPrivateFundActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1056
    new-instance v0, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/base/b/t;-><init>(Lcom/xueqiu/android/base/b/q;)V

    .line 1180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 1057
    iget-object v2, p0, Lcom/xueqiu/android/community/UserPrivateFundActivity;->j:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/xueqiu/android/base/b/ai;->l(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 1059
    invoke-virtual {v0, p0}, Lcom/xueqiu/android/base/b/t;->a(Landroid/app/Activity;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/UserPrivateFundActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserPrivateFundActivity$2;-><init>(Lcom/xueqiu/android/community/UserPrivateFundActivity;)V

    .line 1060
    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 53
    return-void
.end method
