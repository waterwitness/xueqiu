.class public final Lcom/xueqiu/android/message/c;
.super Lcom/xueqiu/android/common/e;
.source "RecentTalkFragment.java"


# instance fields
.field private ak:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

.field private al:Landroid/view/View;

.field private am:Lcom/xueqiu/android/message/a/u;

.field private an:Landroid/view/View;

.field private ao:Landroid/view/MenuItem;

.field private ap:Lcom/d/a/b/f;

.field private aq:I

.field private ar:Lrx/j;

.field private as:I

.field private at:I

.field private au:I

.field private av:I

.field private aw:I

.field private ax:I

.field private ay:Z

.field private az:Landroid/content/ServiceConnection;

.field b:Lcom/xueqiu/android/message/a/z;

.field c:Landroid/support/v4/content/r;

.field d:Landroid/content/BroadcastReceiver;

.field e:Lcom/xueqiu/android/message/client/MessageService;

.field f:Lrx/h;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/xueqiu/android/common/e;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/message/c;->aq:I

    .line 161
    new-instance v0, Lcom/xueqiu/android/message/c$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/message/c$1;-><init>(Lcom/xueqiu/android/message/c;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/c;->az:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/message/c;I)I
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/xueqiu/android/message/c;->aq:I

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/message/a/z;)Lcom/xueqiu/android/message/a/z;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    return-object p1
.end method

.method public static a(IIIIII)Lcom/xueqiu/android/message/c;
    .locals 3

    .prologue
    .line 186
    new-instance v0, Lcom/xueqiu/android/message/c;

    invoke-direct {v0}, Lcom/xueqiu/android/message/c;-><init>()V

    .line 187
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 188
    const-string v2, "arg_comment_count"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    const-string v2, "arg_mention_count"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    const-string v2, "arg_paid_mention_count"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    const-string v2, "arg_paid_comment_count"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    const-string v2, "arg_new_follower_count"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    const-string v2, "arg_trade_notification"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/c;->e(Landroid/os/Bundle;)V

    .line 195
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/client/MessageService;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->e:Lcom/xueqiu/android/message/client/MessageService;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/message/client/MessageService;)Lcom/xueqiu/android/message/client/MessageService;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/xueqiu/android/message/c;->e:Lcom/xueqiu/android/message/client/MessageService;

    return-object p1
.end method

.method private a(Lcom/xueqiu/android/community/model/UserNotification;I)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 984
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    if-nez v0, :cond_0

    .line 1002
    :goto_0
    return-void

    .line 987
    :cond_0
    new-instance v2, Lcom/xueqiu/android/message/model/UserNotificationSession;

    invoke-direct {v2}, Lcom/xueqiu/android/message/model/UserNotificationSession;-><init>()V

    .line 988
    if-nez p1, :cond_1

    .line 989
    new-instance p1, Lcom/xueqiu/android/community/model/UserNotification;

    invoke-direct {p1}, Lcom/xueqiu/android/community/model/UserNotification;-><init>()V

    .line 991
    :cond_1
    invoke-virtual {v2, v4}, Lcom/xueqiu/android/message/model/UserNotificationSession;->setType(I)V

    .line 992
    invoke-virtual {v2, p1}, Lcom/xueqiu/android/message/model/UserNotificationSession;->setNotification(Lcom/xueqiu/android/community/model/UserNotification;)V

    .line 993
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/UserNotification;->getUnreadCount()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/message/model/UserNotificationSession;->setUnreadCount(I)V

    .line 994
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    .line 9489
    iget-object v0, v0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    .line 994
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 995
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    .line 10489
    iget-object v0, v0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    .line 995
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 996
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    .line 11489
    iget-object v0, v0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    .line 996
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/UserNotificationSession;

    .line 997
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getType()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 998
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/message/a/z;->c(I)V

    .line 994
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1001
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0, p2, v2}, Lcom/xueqiu/android/message/a/z;->a(ILcom/xueqiu/android/message/model/UserNotificationSession;)V

    goto :goto_0
.end method

.method private a(Lcom/xueqiu/android/community/model/UserNotification;II)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 1005
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    if-nez v0, :cond_0

    .line 1023
    :goto_0
    return-void

    .line 1008
    :cond_0
    new-instance v2, Lcom/xueqiu/android/message/model/UserNotificationSession;

    invoke-direct {v2}, Lcom/xueqiu/android/message/model/UserNotificationSession;-><init>()V

    .line 1009
    if-nez p1, :cond_1

    .line 1010
    new-instance p1, Lcom/xueqiu/android/community/model/UserNotification;

    invoke-direct {p1}, Lcom/xueqiu/android/community/model/UserNotification;-><init>()V

    .line 1012
    :cond_1
    invoke-virtual {v2, v4}, Lcom/xueqiu/android/message/model/UserNotificationSession;->setType(I)V

    .line 1013
    invoke-virtual {v2, p1}, Lcom/xueqiu/android/message/model/UserNotificationSession;->setNotification(Lcom/xueqiu/android/community/model/UserNotification;)V

    .line 1014
    invoke-virtual {v2, p2}, Lcom/xueqiu/android/message/model/UserNotificationSession;->setUnreadCount(I)V

    .line 1015
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    .line 12489
    iget-object v0, v0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    .line 1015
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1016
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    .line 13489
    iget-object v0, v0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    .line 1016
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1017
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    .line 14489
    iget-object v0, v0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    .line 1017
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/UserNotificationSession;

    .line 1018
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getType()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 1019
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/message/a/z;->c(I)V

    .line 1015
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1022
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0, p3, v2}, Lcom/xueqiu/android/message/a/z;->a(ILcom/xueqiu/android/message/model/UserNotificationSession;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/community/model/UserNotification;I)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/message/c;->b(Lcom/xueqiu/android/community/model/UserNotification;I)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/community/model/UserNotification;II)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/xueqiu/android/message/c;->a(Lcom/xueqiu/android/community/model/UserNotification;II)V

    return-void
.end method

.method private a(Lcom/xueqiu/android/message/model/Talk;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 692
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 693
    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 694
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->getIMGroupById(J)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v0

    .line 695
    if-eqz v0, :cond_2

    .line 696
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xueqiu/android/message/model/Talk;->setProfileImageUrl(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p1, v0}, Lcom/xueqiu/android/message/model/Talk;->setGroupRef(Lcom/xueqiu/android/message/model/IMGroup;)V

    .line 699
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->f:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/message/c$21;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/message/c$21;-><init>(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/message/model/Talk;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 728
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->f:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/message/c$24;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/message/c$24;-><init>(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/message/model/Talk;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 736
    return-void

    .line 706
    :cond_2
    invoke-virtual {p1, v1}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    goto :goto_0

    .line 709
    :cond_3
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    .line 710
    if-eqz v0, :cond_5

    .line 711
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 712
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "50x50"

    const-string v3, "100x100"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xueqiu/android/message/model/Talk;->setProfileImageUrl(Ljava/lang/String;)V

    .line 714
    :cond_4
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p1, v0}, Lcom/xueqiu/android/message/model/Talk;->setUserRef(Lcom/xueqiu/android/community/model/User;)V

    .line 716
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->f:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/message/c$22;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/message/c$22;-><init>(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/message/model/Talk;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    goto :goto_0

    .line 723
    :cond_5
    invoke-virtual {p1, v1}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/message/c;I)I
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/xueqiu/android/message/c;->as:I

    return p1
.end method

.method static synthetic b(Lcom/xueqiu/android/message/c;)Lrx/h;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->f:Lrx/h;

    return-object v0
.end method

.method private b(Lcom/xueqiu/android/community/model/UserNotification;I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1026
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    if-nez v0, :cond_0

    .line 1045
    :goto_0
    return-void

    .line 1030
    :cond_0
    new-instance v3, Lcom/xueqiu/android/message/model/UserNotificationSession;

    invoke-direct {v3}, Lcom/xueqiu/android/message/model/UserNotificationSession;-><init>()V

    .line 1031
    if-nez p1, :cond_1

    .line 1032
    new-instance p1, Lcom/xueqiu/android/community/model/UserNotification;

    invoke-direct {p1}, Lcom/xueqiu/android/community/model/UserNotification;-><init>()V

    .line 1034
    :cond_1
    invoke-virtual {v3, v2}, Lcom/xueqiu/android/message/model/UserNotificationSession;->setType(I)V

    .line 1035
    invoke-virtual {v3, p2}, Lcom/xueqiu/android/message/model/UserNotificationSession;->setUnreadCount(I)V

    .line 1036
    invoke-virtual {v3, p1}, Lcom/xueqiu/android/message/model/UserNotificationSession;->setNotification(Lcom/xueqiu/android/community/model/UserNotification;)V

    move v1, v2

    .line 1037
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    .line 15489
    iget-object v0, v0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    .line 1037
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1038
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    .line 16489
    iget-object v0, v0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    .line 1038
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1039
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    .line 17489
    iget-object v0, v0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    .line 1039
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/UserNotificationSession;

    .line 1040
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 1041
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/message/a/z;->c(I)V

    .line 1037
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1044
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/a/z;->a(ILcom/xueqiu/android/message/model/UserNotificationSession;)V

    goto :goto_0
.end method

.method private b(Lcom/xueqiu/android/community/model/UserNotification;II)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1071
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    if-nez v0, :cond_1

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 1075
    :cond_1
    const/4 v0, 0x0

    .line 1076
    if-eqz p1, :cond_4

    .line 1077
    new-instance v0, Lcom/xueqiu/android/message/model/UserNotificationSession;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/UserNotificationSession;-><init>()V

    .line 1078
    invoke-virtual {v0, v4}, Lcom/xueqiu/android/message/model/UserNotificationSession;->setType(I)V

    .line 1079
    invoke-virtual {v0, p1}, Lcom/xueqiu/android/message/model/UserNotificationSession;->setNotification(Lcom/xueqiu/android/community/model/UserNotification;)V

    .line 1080
    invoke-virtual {v0, p2}, Lcom/xueqiu/android/message/model/UserNotificationSession;->setUnreadCount(I)V

    move-object v2, v0

    .line 1083
    :goto_1
    if-eqz v2, :cond_0

    .line 1084
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    .line 21489
    iget-object v0, v0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    .line 1084
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1085
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    .line 22489
    iget-object v0, v0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    .line 1085
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1086
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    .line 23489
    iget-object v0, v0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    .line 1086
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/UserNotificationSession;

    .line 1087
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getType()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 1088
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/message/a/z;->c(I)V

    .line 1084
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1091
    :cond_3
    if-lez p2, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0, p3, v2}, Lcom/xueqiu/android/message/a/z;->a(ILcom/xueqiu/android/message/model/UserNotificationSession;)V

    goto :goto_0

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/community/model/UserNotification;I)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/message/c;->c(Lcom/xueqiu/android/community/model/UserNotification;I)V

    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/community/model/UserNotification;II)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/xueqiu/android/message/c;->b(Lcom/xueqiu/android/community/model/UserNotification;II)V

    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/message/c;I)I
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/xueqiu/android/message/c;->at:I

    return p1
.end method

.method static synthetic c(Lcom/xueqiu/android/message/c;)Landroid/support/v7/a/a;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->w()Landroid/support/v7/a/a;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/xueqiu/android/community/model/UserNotification;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1048
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    if-nez v0, :cond_0

    .line 1068
    :goto_0
    return-void

    .line 1052
    :cond_0
    if-nez p1, :cond_1

    .line 1053
    new-instance p1, Lcom/xueqiu/android/community/model/UserNotification;

    invoke-direct {p1}, Lcom/xueqiu/android/community/model/UserNotification;-><init>()V

    .line 1056
    :cond_1
    new-instance v2, Lcom/xueqiu/android/message/model/UserNotificationSession;

    invoke-direct {v2}, Lcom/xueqiu/android/message/model/UserNotificationSession;-><init>()V

    .line 1057
    invoke-virtual {v2, v4}, Lcom/xueqiu/android/message/model/UserNotificationSession;->setType(I)V

    .line 1058
    invoke-virtual {v2, p2}, Lcom/xueqiu/android/message/model/UserNotificationSession;->setUnreadCount(I)V

    .line 1059
    invoke-virtual {v2, p1}, Lcom/xueqiu/android/message/model/UserNotificationSession;->setNotification(Lcom/xueqiu/android/community/model/UserNotification;)V

    .line 1060
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    .line 18489
    iget-object v0, v0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    .line 1060
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1061
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    .line 19489
    iget-object v0, v0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    .line 1061
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1062
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    .line 20489
    iget-object v0, v0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    .line 1062
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/UserNotificationSession;

    .line 1063
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getType()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 1064
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/message/a/z;->c(I)V

    .line 1060
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1067
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0, v4, v2}, Lcom/xueqiu/android/message/a/z;->a(ILcom/xueqiu/android/message/model/UserNotificationSession;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/community/model/UserNotification;I)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/message/c;->d(Lcom/xueqiu/android/community/model/UserNotification;I)V

    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/message/c;I)I
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/xueqiu/android/message/c;->av:I

    return p1
.end method

.method private d(Lcom/xueqiu/android/community/model/UserNotification;I)V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 1098
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    if-nez v0, :cond_0

    .line 1116
    :goto_0
    return-void

    .line 1101
    :cond_0
    if-nez p1, :cond_1

    .line 1102
    new-instance p1, Lcom/xueqiu/android/community/model/UserNotification;

    invoke-direct {p1}, Lcom/xueqiu/android/community/model/UserNotification;-><init>()V

    .line 1104
    :cond_1
    new-instance v2, Lcom/xueqiu/android/message/model/UserNotificationSession;

    invoke-direct {v2}, Lcom/xueqiu/android/message/model/UserNotificationSession;-><init>()V

    .line 1105
    invoke-virtual {v2, v4}, Lcom/xueqiu/android/message/model/UserNotificationSession;->setType(I)V

    .line 1106
    invoke-virtual {v2, p1}, Lcom/xueqiu/android/message/model/UserNotificationSession;->setNotification(Lcom/xueqiu/android/community/model/UserNotification;)V

    .line 1107
    invoke-virtual {v2, p2}, Lcom/xueqiu/android/message/model/UserNotificationSession;->setUnreadCount(I)V

    .line 1108
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    .line 24489
    iget-object v0, v0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    .line 1108
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1109
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    .line 25489
    iget-object v0, v0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    .line 1109
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1110
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    .line 26489
    iget-object v0, v0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    .line 1110
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/UserNotificationSession;

    .line 1111
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getType()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 1112
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/message/a/z;->c(I)V

    .line 1108
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1115
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/message/a/z;->a(ILcom/xueqiu/android/message/model/UserNotificationSession;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/xueqiu/android/message/c;)V
    .locals 2

    .prologue
    .line 118
    .line 26845
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26848
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/c$26;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/message/c$26;-><init>(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/base/b/q;)V

    .line 27279
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->k:Lcom/xueqiu/android/base/b/d;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/d;->a(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 118
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/community/model/UserNotification;I)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/message/c;->a(Lcom/xueqiu/android/community/model/UserNotification;I)V

    return-void
.end method

.method static synthetic e(Lcom/xueqiu/android/message/c;I)I
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/xueqiu/android/message/c;->au:I

    return p1
.end method

.method static synthetic e(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/a/z;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/message/c;I)I
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/xueqiu/android/message/c;->aw:I

    return p1
.end method

.method static synthetic f(Lcom/xueqiu/android/message/c;)V
    .locals 13

    .prologue
    .line 27866
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "key_last_comment"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/model/UserNotification;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/UserNotification;

    .line 27867
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, "key_last_mention"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/community/model/UserNotification;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/UserNotification;

    .line 27868
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v3

    const-string v4, "key_new_follower"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/xueqiu/android/community/model/UserNotification;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/community/model/UserNotification;

    .line 27869
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v4

    const-string v5, "key_new_push"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/xueqiu/android/community/model/UserNotification;

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xueqiu/android/community/model/UserNotification;

    .line 27870
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v5

    const-string v6, "key_new_paid_mention"

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/xueqiu/android/community/model/UserNotification;

    invoke-virtual {v4, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xueqiu/android/community/model/UserNotification;

    .line 27871
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v5

    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v6

    const-string v7, "key_last_trade_notification"

    const-string v8, ""

    invoke-static {v6, v7, v8}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/xueqiu/android/community/model/UserNotification;

    invoke-virtual {v5, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xueqiu/android/community/model/UserNotification;

    .line 27875
    iget v6, p0, Lcom/xueqiu/android/message/c;->as:I

    invoke-direct {p0, v0, v6}, Lcom/xueqiu/android/message/c;->b(Lcom/xueqiu/android/community/model/UserNotification;I)V

    .line 27876
    iget v6, p0, Lcom/xueqiu/android/message/c;->at:I

    const/4 v0, 0x2

    invoke-direct {p0, v1, v6}, Lcom/xueqiu/android/message/c;->c(Lcom/xueqiu/android/community/model/UserNotification;I)V

    .line 27878
    if-eqz v5, :cond_0

    .line 27879
    iget v1, p0, Lcom/xueqiu/android/message/c;->ax:I

    const/4 v0, 0x3

    invoke-direct {p0, v5, v1}, Lcom/xueqiu/android/message/c;->d(Lcom/xueqiu/android/community/model/UserNotification;I)V

    .line 27881
    :cond_0
    if-eqz v4, :cond_3

    .line 27882
    iget v1, p0, Lcom/xueqiu/android/message/c;->au:I

    iget v5, p0, Lcom/xueqiu/android/message/c;->av:I

    add-int/2addr v5, v1

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v4, v5, v0}, Lcom/xueqiu/android/message/c;->a(Lcom/xueqiu/android/community/model/UserNotification;II)V

    .line 27884
    :goto_0
    if-eqz v3, :cond_2

    .line 27885
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v3, v1}, Lcom/xueqiu/android/message/c;->a(Lcom/xueqiu/android/community/model/UserNotification;I)V

    .line 27888
    :goto_1
    iget v1, p0, Lcom/xueqiu/android/message/c;->aw:I

    invoke-direct {p0, v2, v1, v0}, Lcom/xueqiu/android/message/c;->b(Lcom/xueqiu/android/community/model/UserNotification;II)V

    .line 27889
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    if-eqz v0, :cond_1

    .line 27890
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/z;->notifyDataSetChanged()V

    .line 27893
    :cond_1
    new-instance v7, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v7, p0}, Lcom/xueqiu/android/base/b/t;-><init>(Lcom/xueqiu/android/base/b/q;)V

    .line 27894
    new-instance v8, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v8, p0}, Lcom/xueqiu/android/base/b/t;-><init>(Lcom/xueqiu/android/base/b/q;)V

    .line 27895
    new-instance v9, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v9, p0}, Lcom/xueqiu/android/base/b/t;-><init>(Lcom/xueqiu/android/base/b/q;)V

    .line 27896
    new-instance v10, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v10, p0}, Lcom/xueqiu/android/base/b/t;-><init>(Lcom/xueqiu/android/base/b/q;)V

    .line 27897
    new-instance v11, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v11, p0}, Lcom/xueqiu/android/base/b/t;-><init>(Lcom/xueqiu/android/base/b/q;)V

    .line 27898
    new-instance v12, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v12, p0}, Lcom/xueqiu/android/base/b/t;-><init>(Lcom/xueqiu/android/base/b/q;)V

    .line 28032
    iget-object v0, v7, Lcom/xueqiu/android/base/b/t;->a:Lrx/i/a;

    invoke-virtual {v0}, Lrx/i/a;->c()Lrx/a;

    move-result-object v0

    .line 27899
    new-instance v1, Lcom/xueqiu/android/message/c$29;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/c$29;-><init>(Lcom/xueqiu/android/message/c;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/c/b;)Lrx/a;

    move-result-object v0

    .line 29032
    iget-object v1, v8, Lcom/xueqiu/android/base/b/t;->a:Lrx/i/a;

    invoke-virtual {v1}, Lrx/i/a;->c()Lrx/a;

    move-result-object v1

    .line 27907
    new-instance v2, Lcom/xueqiu/android/message/c$30;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/c$30;-><init>(Lcom/xueqiu/android/message/c;)V

    invoke-virtual {v1, v2}, Lrx/a;->b(Lrx/c/b;)Lrx/a;

    move-result-object v1

    .line 30032
    iget-object v2, v11, Lcom/xueqiu/android/base/b/t;->a:Lrx/i/a;

    invoke-virtual {v2}, Lrx/i/a;->c()Lrx/a;

    move-result-object v2

    .line 27915
    new-instance v3, Lcom/xueqiu/android/message/c$31;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/message/c$31;-><init>(Lcom/xueqiu/android/message/c;)V

    invoke-virtual {v2, v3}, Lrx/a;->b(Lrx/c/b;)Lrx/a;

    move-result-object v2

    .line 31032
    iget-object v3, v9, Lcom/xueqiu/android/base/b/t;->a:Lrx/i/a;

    invoke-virtual {v3}, Lrx/i/a;->c()Lrx/a;

    move-result-object v3

    .line 27923
    new-instance v4, Lcom/xueqiu/android/message/c$32;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/message/c$32;-><init>(Lcom/xueqiu/android/message/c;)V

    invoke-virtual {v3, v4}, Lrx/a;->b(Lrx/c/b;)Lrx/a;

    move-result-object v3

    .line 32032
    iget-object v4, v10, Lcom/xueqiu/android/base/b/t;->a:Lrx/i/a;

    invoke-virtual {v4}, Lrx/i/a;->c()Lrx/a;

    move-result-object v4

    .line 27931
    new-instance v5, Lcom/xueqiu/android/message/c$33;

    invoke-direct {v5, p0}, Lcom/xueqiu/android/message/c$33;-><init>(Lcom/xueqiu/android/message/c;)V

    invoke-virtual {v4, v5}, Lrx/a;->b(Lrx/c/b;)Lrx/a;

    move-result-object v4

    .line 33032
    iget-object v5, v12, Lcom/xueqiu/android/base/b/t;->a:Lrx/i/a;

    invoke-virtual {v5}, Lrx/i/a;->c()Lrx/a;

    move-result-object v5

    .line 27936
    new-instance v6, Lcom/xueqiu/android/message/c$35;

    invoke-direct {v6, p0}, Lcom/xueqiu/android/message/c$35;-><init>(Lcom/xueqiu/android/message/c;)V

    .line 27899
    invoke-static/range {v0 .. v6}, Lrx/a;->a(Lrx/a;Lrx/a;Lrx/a;Lrx/a;Lrx/a;Lrx/a;Lrx/c/k;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/c$27;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/c$27;-><init>(Lcom/xueqiu/android/message/c;)V

    new-instance v2, Lcom/xueqiu/android/message/c$28;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/c$28;-><init>(Lcom/xueqiu/android/message/c;)V

    .line 27964
    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    .line 27975
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 33686
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v0, v7}, Lcom/xueqiu/android/base/b/aj;->b(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 27976
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 34682
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v0, v8}, Lcom/xueqiu/android/base/b/aj;->c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 27977
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 34742
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual {v0, v11}, Lcom/xueqiu/android/base/b/am;->e(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 27978
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 35720
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v0, v9}, Lcom/xueqiu/android/base/b/aj;->d(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 27979
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 36400
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->n:Lcom/xueqiu/android/base/b/al;

    invoke-virtual {v0, v10}, Lcom/xueqiu/android/base/b/al;->b(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 27980
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/xueqiu/android/base/b/ai;->e(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 118
    return-void

    :cond_2
    move v0, v1

    goto/16 :goto_1

    :cond_3
    move v1, v0

    goto/16 :goto_0
.end method

.method static synthetic g(Lcom/xueqiu/android/message/c;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->ao:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/message/c;I)Lcom/xueqiu/android/community/model/UserNotification;
    .locals 5

    .prologue
    .line 37119
    new-instance v0, Lcom/xueqiu/android/community/model/UserNotification;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/UserNotification;-><init>()V

    .line 37120
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/UserNotification;->setTimestamp(Ljava/util/Date;)V

    .line 37121
    if-lez p1, :cond_0

    .line 37122
    const v1, 0x7f07011d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/xueqiu/android/message/c;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/UserNotification;->setDesc(Ljava/lang/String;)V

    .line 118
    :goto_0
    return-object v0

    .line 37124
    :cond_0
    const v1, 0x7f07011e

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/c;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/UserNotification;->setDesc(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/xueqiu/android/message/c;I)I
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/xueqiu/android/message/c;->ax:I

    return p1
.end method

.method static synthetic h(Lcom/xueqiu/android/message/c;)Lcom/d/a/b/f;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->ap:Lcom/d/a/b/f;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/a/u;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->am:Lcom/xueqiu/android/message/a/u;

    return-object v0
.end method

.method static synthetic j(Lcom/xueqiu/android/message/c;)Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/xueqiu/android/message/c;->ay:Z

    return v0
.end method

.method static synthetic k(Lcom/xueqiu/android/message/c;)Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/message/c;->ay:Z

    return v0
.end method

.method static synthetic l(Lcom/xueqiu/android/message/c;)I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/xueqiu/android/message/c;->au:I

    return v0
.end method

.method static synthetic m(Lcom/xueqiu/android/message/c;)I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/xueqiu/android/message/c;->av:I

    return v0
.end method

.method static synthetic n(Lcom/xueqiu/android/message/c;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->h:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic o(Lcom/xueqiu/android/message/c;)Landroid/view/View;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic p(Lcom/xueqiu/android/message/c;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 37623
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 37624
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalks()Ljava/util/List;

    move-result-object v0

    .line 37625
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 37626
    const/4 v1, 0x0

    .line 37628
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v3

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 37629
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 37630
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getUnread()I

    move-result v8

    add-int/2addr v2, v8

    .line 37632
    :cond_1
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v1, :cond_2

    .line 37633
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    :cond_2
    move-object v1, v0

    .line 37636
    :cond_3
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v8

    if-nez v8, :cond_0

    .line 37637
    invoke-direct {p0, v0}, Lcom/xueqiu/android/message/c;->a(Lcom/xueqiu/android/message/model/Talk;)V

    .line 37638
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isActive()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 37639
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37644
    :cond_4
    if-eqz v1, :cond_5

    .line 37645
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/model/Talk;->setUnread(I)Lcom/xueqiu/android/message/model/Talk;

    .line 37646
    invoke-direct {p0, v1}, Lcom/xueqiu/android/message/c;->a(Lcom/xueqiu/android/message/model/Talk;)V

    .line 37647
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 37648
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37652
    :cond_5
    sget-object v0, Lcom/xueqiu/android/message/model/Talk;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 37653
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37654
    new-instance v1, Lcom/xueqiu/android/message/c$20;

    invoke-direct {v1, p0, v6, v4, v5}, Lcom/xueqiu/android/message/c$20;-><init>(Lcom/xueqiu/android/message/c;Ljava/util/List;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37688
    const-string v0, "RecentTalkFragment"

    const-string v1, "reload cost:%dms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method


# virtual methods
.method public final F_()V
    .locals 1

    .prologue
    .line 758
    invoke-super {p0}, Lcom/xueqiu/android/common/e;->F_()V

    .line 759
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->ar:Lrx/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/c;->ar:Lrx/j;

    invoke-interface {v0}, Lrx/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->ar:Lrx/j;

    invoke-interface {v0}, Lrx/j;->b()V

    .line 762
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 388
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/c;->e_(Z)V

    .line 390
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->g:Landroid/view/View;

    if-nez v0, :cond_1

    .line 391
    const v0, 0x7f030141

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/c;->g:Landroid/view/View;

    .line 393
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->g:Landroid/view/View;

    const v1, 0x7f0e0579

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xueqiu/android/message/c;->h:Landroid/widget/ListView;

    .line 394
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->g:Landroid/view/View;

    const v1, 0x7f0e018e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/c;->al:Landroid/view/View;

    .line 395
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->g:Landroid/view/View;

    const v1, 0x7f0e013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lcom/xueqiu/android/message/c;->ak:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    .line 396
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->ak:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAreHeadersSticky(Z)V

    .line 397
    new-instance v0, Lcom/xueqiu/android/message/a/u;

    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/message/c;->ap:Lcom/d/a/b/f;

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/message/a/u;-><init>(Landroid/content/Context;Lcom/d/a/b/f;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/c;->am:Lcom/xueqiu/android/message/a/u;

    .line 398
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->ak:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/xueqiu/android/message/c;->am:Lcom/xueqiu/android/message/a/u;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;)V

    .line 399
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->ak:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/xueqiu/android/message/c;->al:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setEmptyView(Landroid/view/View;)V

    .line 400
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->ak:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    new-instance v1, Lcom/xueqiu/android/message/c$11;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/c$11;-><init>(Lcom/xueqiu/android/message/c;)V

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 420
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->g:Landroid/view/View;

    const v1, 0x7f0e0141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/c;->an:Landroid/view/View;

    .line 421
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->ak:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    new-instance v1, Lcom/xueqiu/android/message/c$13;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/c$13;-><init>(Lcom/xueqiu/android/message/c;)V

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 469
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->ak:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->al:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->h:Landroid/widget/ListView;

    new-instance v1, Lcom/xueqiu/android/message/c$14;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/c$14;-><init>(Lcom/xueqiu/android/message/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 550
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->h:Landroid/widget/ListView;

    new-instance v1, Lcom/xueqiu/android/message/c$15;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/c$15;-><init>(Lcom/xueqiu/android/message/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 579
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->g:Landroid/view/View;

    return-object v0

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xueqiu/android/message/c;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/e;->a(Landroid/os/Bundle;)V

    .line 201
    const-string v0, "im"

    .line 4073
    iput-object v0, p0, Lcom/xueqiu/android/common/e;->a:Ljava/lang/String;

    .line 4564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 203
    if-eqz v0, :cond_0

    .line 5564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 205
    const-string v1, "arg_comment_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/message/c;->as:I

    .line 206
    const-string v1, "arg_mention_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/message/c;->at:I

    .line 207
    const-string v1, "arg_paid_mention_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/message/c;->au:I

    .line 208
    const-string v1, "arg_paid_comment_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/message/c;->av:I

    .line 209
    const-string v1, "arg_new_follower_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/message/c;->aw:I

    .line 210
    const-string v1, "arg_trade_notification"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/message/c;->ax:I

    .line 213
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pay_ask_first_in"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/message/c;->ay:Z

    .line 216
    invoke-static {}, Lrx/h/p;->c()Lrx/g;

    move-result-object v0

    invoke-virtual {v0}, Lrx/g;->a()Lrx/h;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/c;->f:Lrx/h;

    .line 217
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/message/client/MessageService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/message/c;->az:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 219
    invoke-static {}, Lrx/h/p;->a()Lrx/g;

    move-result-object v0

    invoke-virtual {v0}, Lrx/g;->a()Lrx/h;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/c;->f:Lrx/h;

    .line 220
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/c;->ap:Lcom/d/a/b/f;

    .line 221
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    const-string v1, "com.xueqiu.android.action.refreshGroupApply"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v1, "com.xueqiu.android.action.deleteTalk"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v1, "com.xueqiu.android.action.receiveRead"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    new-instance v1, Lcom/xueqiu/android/message/c$12;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/c$12;-><init>(Lcom/xueqiu/android/message/c;)V

    iput-object v1, p0, Lcom/xueqiu/android/message/c;->d:Landroid/content/BroadcastReceiver;

    .line 247
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/message/c;->c:Landroid/support/v4/content/r;

    .line 248
    iget-object v1, p0, Lcom/xueqiu/android/message/c;->c:Landroid/support/v4/content/r;

    iget-object v2, p0, Lcom/xueqiu/android/message/c;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 250
    sget-object v0, Lcom/xueqiu/android/message/client/c;->a:Lrx/i/c;

    new-instance v1, Lcom/xueqiu/android/message/c$23;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/c$23;-><init>(Lcom/xueqiu/android/message/c;)V

    new-instance v2, Lcom/xueqiu/android/message/c$34;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/c$34;-><init>(Lcom/xueqiu/android/message/c;)V

    invoke-virtual {v0, v1, v2}, Lrx/i/c;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/c;->a(Lrx/j;)V

    .line 261
    sget-object v0, Lcom/xueqiu/android/message/client/c;->c:Lrx/i/c;

    new-instance v1, Lcom/xueqiu/android/message/c$37;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/c$37;-><init>(Lcom/xueqiu/android/message/c;)V

    new-instance v2, Lcom/xueqiu/android/message/c$38;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/c$38;-><init>(Lcom/xueqiu/android/message/c;)V

    invoke-virtual {v0, v1, v2}, Lrx/i/c;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/c;->a(Lrx/j;)V

    .line 273
    sget-object v0, Lcom/xueqiu/android/message/client/c;->e:Lrx/i/c;

    new-instance v1, Lcom/xueqiu/android/message/c$39;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/c$39;-><init>(Lcom/xueqiu/android/message/c;)V

    new-instance v2, Lcom/xueqiu/android/message/c$40;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/c$40;-><init>(Lcom/xueqiu/android/message/c;)V

    invoke-virtual {v0, v1, v2}, Lrx/i/c;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/c;->a(Lrx/j;)V

    .line 285
    sget-object v0, Lcom/xueqiu/android/message/client/c;->b:Lrx/i/c;

    new-instance v1, Lcom/xueqiu/android/message/c$41;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/c$41;-><init>(Lcom/xueqiu/android/message/c;)V

    new-instance v2, Lcom/xueqiu/android/message/c$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/c$2;-><init>(Lcom/xueqiu/android/message/c;)V

    .line 286
    invoke-virtual {v0, v1, v2}, Lrx/i/c;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    move-result-object v0

    .line 285
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/c;->a(Lrx/j;)V

    .line 298
    sget-object v0, Lcom/xueqiu/android/message/client/c;->n:Lrx/i/b;

    new-instance v1, Lcom/xueqiu/android/message/c$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/c$3;-><init>(Lcom/xueqiu/android/message/c;)V

    new-instance v2, Lcom/xueqiu/android/message/c$4;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/c$4;-><init>(Lcom/xueqiu/android/message/c;)V

    invoke-virtual {v0, v1, v2}, Lrx/i/b;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/c;->a(Lrx/j;)V

    .line 6069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 6186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 316
    if-nez v0, :cond_1

    .line 317
    sget-object v0, Lcom/xueqiu/android/message/client/c;->g:Lrx/i/c;

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Ljava/lang/Object;Lrx/a;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/c$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/c$5;-><init>(Lcom/xueqiu/android/message/c;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/c;->a(Lrx/j;)V

    .line 324
    sget-object v0, Lcom/xueqiu/android/message/client/c;->j:Lrx/i/c;

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Ljava/lang/Object;Lrx/a;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/c$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/c$6;-><init>(Lcom/xueqiu/android/message/c;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/c;->a(Lrx/j;)V

    .line 331
    sget-object v0, Lcom/xueqiu/android/message/client/c;->i:Lrx/i/c;

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Ljava/lang/Object;Lrx/a;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/c$7;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/c$7;-><init>(Lcom/xueqiu/android/message/c;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/c;->a(Lrx/j;)V

    .line 338
    sget-object v0, Lcom/xueqiu/android/message/client/c;->h:Lrx/i/c;

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Ljava/lang/Object;Lrx/a;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/c$8;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/c$8;-><init>(Lcom/xueqiu/android/message/c;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/c;->a(Lrx/j;)V

    .line 346
    sget-object v0, Lcom/xueqiu/android/message/client/c;->k:Lrx/i/c;

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Ljava/lang/Object;Lrx/a;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/c$9;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/c$9;-><init>(Lcom/xueqiu/android/message/c;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/c;->a(Lrx/j;)V

    .line 355
    sget-object v0, Lcom/xueqiu/android/message/client/c;->l:Lrx/i/c;

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Ljava/lang/Object;Lrx/a;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/c$10;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/c$10;-><init>(Lcom/xueqiu/android/message/c;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/c;->a(Lrx/j;)V

    .line 364
    :cond_1
    return-void
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 778
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v8, [I

    fill-array-data v1, :array_0

    .line 779
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 785
    const v1, 0x7f070356

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/message/c;->ao:Landroid/view/MenuItem;

    .line 786
    iget-object v1, p0, Lcom/xueqiu/android/message/c;->ao:Landroid/view/MenuItem;

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 788
    iget-object v1, p0, Lcom/xueqiu/android/message/c;->ao:Landroid/view/MenuItem;

    invoke-static {v1, v6}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 789
    const-string v1, "\u66f4\u591a"

    invoke-interface {p1, v4, v6, v5, v1}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v1

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v1

    .line 790
    const-string v2, "\u521b\u5efa\u7fa4\u7ec4"

    invoke-interface {v1, v4, v7, v4, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 791
    const-string v2, "\u6dfb\u52a0\u7403\u53cb"

    invoke-interface {v1, v4, v8, v5, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 792
    invoke-interface {v1}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {v1, v6}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 794
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 796
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/e;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 797
    return-void

    .line 778
    nop

    :array_0
    .array-data 4
        0x7f0100ac
        0x7f0100a3
        0x7f0100b2
        0x7f01009c
    .end array-data
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 584
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/e;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 585
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IM_home"

    .line 7088
    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 802
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 8069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v1

    .line 8186
    iget-boolean v1, v1, Lcom/xueqiu/android/base/t;->d:Z

    .line 803
    if-eqz v1, :cond_0

    .line 804
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->g()Landroid/support/v4/a/k;

    move-result-object v1

    .line 9152
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 821
    :goto_0
    return v0

    .line 807
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/message/SelectUserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 808
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 809
    const-string v3, "create_chat"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 810
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 811
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/c;->a(Landroid/content/Intent;)V

    .line 812
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0704e3

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 821
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/e;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 813
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 814
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/FindPeopleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 815
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/c;->a(Landroid/content/Intent;)V

    .line 816
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0704e4

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    goto :goto_1

    .line 817
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 818
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7f040010

    const v2, 0x7f040008

    invoke-virtual {p0, v0, v1, v2}, Lcom/xueqiu/android/message/c;->a(Landroid/content/Intent;II)V

    goto :goto_1
.end method

.method public final o()V
    .locals 2

    .prologue
    .line 740
    invoke-super {p0}, Lcom/xueqiu/android/common/e;->o()V

    .line 741
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->u()V

    .line 743
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->ar:Lrx/j;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->ar:Lrx/j;

    invoke-interface {v0}, Lrx/j;->b()V

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->f:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/message/c$25;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/c$25;-><init>(Lcom/xueqiu/android/message/c;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/c;->ar:Lrx/j;

    .line 754
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->f:Lrx/h;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->f:Lrx/h;

    invoke-virtual {v0}, Lrx/h;->b()V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->c:Landroid/support/v4/content/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/message/c;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->c:Landroid/support/v4/content/r;

    iget-object v1, p0, Lcom/xueqiu/android/message/c;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/z;->d()V

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/message/c;->e:Lcom/xueqiu/android/message/client/MessageService;

    if-eqz v0, :cond_3

    .line 379
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/c;->az:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 382
    :cond_3
    invoke-super {p0}, Lcom/xueqiu/android/common/e;->q()V

    .line 383
    return-void
.end method

.method public final u()V
    .locals 2

    .prologue
    .line 825
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->w()Landroid/support/v7/a/a;

    move-result-object v0

    .line 829
    if-eqz v0, :cond_0

    .line 830
    iget v0, p0, Lcom/xueqiu/android/message/c;->aq:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 832
    :pswitch_0
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->w()Landroid/support/v7/a/a;

    move-result-object v0

    const-string v1, "\u6d88\u606f(\u672a\u8fde\u63a5)"

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 835
    :pswitch_1
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->w()Landroid/support/v7/a/a;

    move-result-object v0

    const-string v1, "\u6d88\u606f"

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 838
    :pswitch_2
    invoke-virtual {p0}, Lcom/xueqiu/android/message/c;->w()Landroid/support/v7/a/a;

    move-result-object v0

    const-string v1, "\u6d88\u606f(\u8fde\u63a5\u4e2d...)"

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 830
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
