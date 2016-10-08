.class public Lcom/xueqiu/android/message/ChatActivity;
.super Lcom/xueqiu/android/common/b;
.source "ChatActivity.java"


# static fields
.field private static X:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Z

.field private C:Landroid/widget/ImageButton;

.field private D:Landroid/view/View;

.field private E:Landroid/widget/ImageButton;

.field private F:Landroid/widget/ImageButton;

.field private G:Landroid/widget/ImageButton;

.field private H:Landroid/widget/ImageButton;

.field private I:Landroid/widget/GridView;

.field private J:Landroid/widget/GridView;

.field private K:Landroid/view/inputmethod/InputMethodManager;

.field private L:Lcom/xueqiu/android/message/model/Message;

.field private M:Landroid/net/Uri;

.field private N:Lcom/xueqiu/android/message/model/IMGroup;

.field private O:I

.field private P:Lcom/xueqiu/android/base/b/ai;

.field private Q:Landroid/support/v4/content/r;

.field private R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field private S:I

.field private T:Lcom/xueqiu/android/base/storage/DBManager;

.field private U:Lcom/google/gson/Gson;

.field private V:I

.field private W:Ljava/text/DateFormat;

.field private Y:Lcom/xueqiu/android/message/client/MessageService;

.field private Z:Landroid/content/ServiceConnection;

.field private aa:Landroid/view/animation/Animation;

.field private ab:Landroid/view/animation/Animation;

.field private final ac:Landroid/view/View$OnClickListener;

.field private ad:Landroid/os/Handler;

.field private ae:Ljava/lang/String;

.field j:Lcom/xueqiu/android/message/a/d;

.field public k:Lcom/xueqiu/android/common/widget/SnowBallEditText;

.field p:Landroid/widget/LinearLayout;

.field q:Lcom/xueqiu/android/message/model/Talk;

.field r:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

.field public s:Lcom/d/a/b/f;

.field final t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field u:Lrx/h;

.field v:I

.field final w:Landroid/content/BroadcastReceiver;

.field final x:Landroid/os/ResultReceiver;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 597
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xueqiu/android/message/ChatActivity;->X:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->K:Landroid/view/inputmethod/InputMethodManager;

    .line 190
    iput v2, p0, Lcom/xueqiu/android/message/ChatActivity;->O:I

    .line 196
    iput v2, p0, Lcom/xueqiu/android/message/ChatActivity;->S:I

    .line 202
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->U:Lcom/google/gson/Gson;

    .line 204
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 207
    const/16 v0, 0x1e

    iput v0, p0, Lcom/xueqiu/android/message/ChatActivity;->V:I

    .line 209
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->W:Ljava/text/DateFormat;

    .line 603
    new-instance v0, Lcom/xueqiu/android/message/ChatActivity$8;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/message/ChatActivity$8;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->Z:Landroid/content/ServiceConnection;

    .line 1244
    iput v2, p0, Lcom/xueqiu/android/message/ChatActivity;->v:I

    .line 1267
    new-instance v0, Lcom/xueqiu/android/message/ChatActivity$42;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/message/ChatActivity$42;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->ac:Landroid/view/View$OnClickListener;

    .line 1331
    new-instance v0, Lcom/xueqiu/android/message/ChatActivity$46;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/message/ChatActivity$46;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->w:Landroid/content/BroadcastReceiver;

    .line 1383
    new-instance v0, Lcom/xueqiu/android/message/ChatActivity$47;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/message/ChatActivity$47;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->x:Landroid/os/ResultReceiver;

    .line 1449
    new-instance v0, Lcom/xueqiu/android/message/ChatActivity$48;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/message/ChatActivity$48;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->ad:Landroid/os/Handler;

    return-void
.end method

.method static synthetic A(Lcom/xueqiu/android/message/ChatActivity;)I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/xueqiu/android/message/ChatActivity;->S:I

    return v0
.end method

.method static synthetic B(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/IMGroup;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->N:Lcom/xueqiu/android/message/model/IMGroup;

    return-object v0
.end method

.method static synthetic C(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/xueqiu/android/message/ChatActivity;->r()V

    return-void
.end method

.method static synthetic D(Lcom/xueqiu/android/message/ChatActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->K:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic E(Lcom/xueqiu/android/message/ChatActivity;)I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/message/ChatActivity;->O:I

    return v0
.end method

.method static synthetic F(Lcom/xueqiu/android/message/ChatActivity;)I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/xueqiu/android/message/ChatActivity;->O:I

    return v0
.end method

.method static synthetic G(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/client/MessageService;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->Y:Lcom/xueqiu/android/message/client/MessageService;

    return-object v0
.end method

.method static synthetic H(Lcom/xueqiu/android/message/ChatActivity;)Lcom/d/a/b/f;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->s:Lcom/d/a/b/f;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/message/ChatActivity;I)I
    .locals 0

    .prologue
    .line 152
    iput p1, p0, Lcom/xueqiu/android/message/ChatActivity;->S:I

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/client/MessageService;)Lcom/xueqiu/android/message/client/MessageService;
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity;->Y:Lcom/xueqiu/android/message/client/MessageService;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/IMGroup;)Lcom/xueqiu/android/message/model/IMGroup;
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity;->N:Lcom/xueqiu/android/message/model/IMGroup;

    return-object p1
.end method

.method private static a(Ljava/util/Date;)Lcom/xueqiu/android/message/model/Message;
    .locals 2

    .prologue
    .line 355
    new-instance v0, Lcom/xueqiu/android/message/model/Message;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/Message;-><init>()V

    .line 356
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Message;->setType(I)V

    .line 357
    invoke-virtual {v0, p0}, Lcom/xueqiu/android/message/model/Message;->setCreatedAt(Ljava/util/Date;)V

    .line 358
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/message/ChatActivity;JZ)Lcom/xueqiu/android/message/model/Talk;
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/xueqiu/android/message/ChatActivity;->c(JZ)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Talk;)Lcom/xueqiu/android/message/model/Talk;
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/message/ChatActivity;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/xueqiu/android/message/ChatActivity;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/xueqiu/android/community/model/User;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2066
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2067
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/DBManager;->insertOrUpdateUserByKeepFollowShip(Lcom/xueqiu/android/community/model/User;)Z

    .line 2069
    :cond_0
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v4}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalk(JZ)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    .line 2070
    if-nez v0, :cond_1

    .line 2071
    new-instance v0, Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/Talk;-><init>()V

    .line 2072
    invoke-virtual {v0, v4}, Lcom/xueqiu/android/message/model/Talk;->setGroup(Z)V

    .line 2073
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/model/Talk;->setId(J)V

    .line 2074
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    .line 2075
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setProfileImageUrl(Ljava/lang/String;)V

    .line 2076
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    .line 2077
    invoke-virtual {v0, v4}, Lcom/xueqiu/android/message/model/Talk;->setCollapsed(Z)V

    .line 2078
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalk(Lcom/xueqiu/android/message/model/Talk;)V

    .line 2080
    :cond_1
    invoke-virtual {v0, p1}, Lcom/xueqiu/android/message/model/Talk;->setUserRef(Lcom/xueqiu/android/community/model/User;)V

    .line 2081
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2082
    const-string v2, "talk"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2083
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2084
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/message/ChatActivity;Lcom/snowballfinance/messageplatform/data/MenuItem;)V
    .locals 4

    .prologue
    .line 44138
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 44139
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    .line 44140
    :cond_1
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getType()Lcom/snowballfinance/messageplatform/data/MenuItemType;

    move-result-object v0

    sget-object v1, Lcom/snowballfinance/messageplatform/data/MenuItemType;->CLICK:Lcom/snowballfinance/messageplatform/data/MenuItemType;

    if-ne v0, v1, :cond_0

    .line 44141
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->Y:Lcom/xueqiu/android/message/client/MessageService;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snowballfinance/messageplatform/a/y;->a(Ljava/lang/Long;Ljava/lang/String;)Lcom/snowballfinance/messageplatform/a/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/client/MessageService;->a(Lcom/snowballfinance/messageplatform/a/y;)Lrx/a;

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Message;)V
    .locals 1

    .prologue
    .line 152
    .line 44690
    new-instance v0, Lcom/xueqiu/android/message/ChatActivity$54;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/message/ChatActivity$54;-><init>(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Message;)V

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/message/ChatActivity;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 152
    .line 41069
    const-string v0, "service_menu"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41070
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/message/ChatActivity;Z)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/xueqiu/android/message/ChatActivity;->b(Z)V

    return-void
.end method

.method private a(Lcom/xueqiu/android/message/model/Talk;)V
    .locals 3

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    .line 1129
    invoke-direct {p0}, Lcom/xueqiu/android/message/ChatActivity;->o()V

    .line 1130
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->Y:Lcom/xueqiu/android/message/client/MessageService;

    if-eqz v0, :cond_0

    .line 1131
    invoke-direct {p0}, Lcom/xueqiu/android/message/ChatActivity;->m()V

    .line 1135
    :goto_0
    return-void

    .line 1133
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/message/client/MessageService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->Z:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/xueqiu/android/message/ChatActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/a/d;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/message/ChatActivity;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/xueqiu/android/message/ChatActivity;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .locals 3

    .prologue
    const v2, 0x7f0202a8

    .line 1437
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->G:Landroid/widget/ImageButton;

    const v1, 0x7f020297

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1438
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->F:Landroid/widget/ImageButton;

    const v1, 0x7f0202a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1439
    packed-switch p1, :pswitch_data_0

    .line 1447
    :goto_0
    return-void

    .line 1441
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->F:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1444
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->G:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1439
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Lcom/snowballfinance/messageplatform/data/Menu;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1146
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Menu;->getType()Lcom/snowballfinance/messageplatform/data/MenuType;

    move-result-object v0

    sget-object v1, Lcom/snowballfinance/messageplatform/data/MenuType;->HYBRID_MENU:Lcom/snowballfinance/messageplatform/data/MenuType;

    if-ne v0, v1, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->C:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1148
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->D:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1149
    invoke-direct {p0, v4}, Lcom/xueqiu/android/message/ChatActivity;->b(Z)V

    .line 1161
    :goto_0
    return-void

    .line 1150
    :cond_0
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Menu;->getType()Lcom/snowballfinance/messageplatform/data/MenuType;

    move-result-object v0

    sget-object v1, Lcom/snowballfinance/messageplatform/data/MenuType;->NONE:Lcom/snowballfinance/messageplatform/data/MenuType;

    if-ne v0, v1, :cond_1

    .line 1151
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1152
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1153
    :cond_1
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Menu;->getType()Lcom/snowballfinance/messageplatform/data/MenuType;

    move-result-object v0

    sget-object v1, Lcom/snowballfinance/messageplatform/data/MenuType;->TEXT_INPUT:Lcom/snowballfinance/messageplatform/data/MenuType;

    if-ne v0, v1, :cond_2

    .line 1154
    invoke-direct {p0, v3}, Lcom/xueqiu/android/message/ChatActivity;->b(Z)V

    .line 1155
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->C:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1157
    :cond_2
    invoke-direct {p0, v4}, Lcom/xueqiu/android/message/ChatActivity;->b(Z)V

    .line 1158
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->z:Landroid/widget/LinearLayout;

    const v1, 0x7f0e054b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1159
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->z:Landroid/widget/LinearLayout;

    const v1, 0x7f0e054c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/message/ChatActivity;I)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/xueqiu/android/message/ChatActivity;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Message;)V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/message/ChatActivity;->b(Lcom/xueqiu/android/message/model/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Talk;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/model/Talk;)V

    return-void
.end method

.method private b(Lcom/xueqiu/android/message/model/Talk;)V
    .locals 3

    .prologue
    .line 1500
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1501
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xueqiu/android/message/model/Talk;->setCollapsed(Z)V

    .line 1502
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->Q:Landroid/support/v4/content/r;

    .line 32202
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.action.setTalkState"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32203
    const-string v2, "extra_talk"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32204
    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 1503
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalk(Lcom/xueqiu/android/message/model/Talk;)V

    .line 1505
    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1275
    if-eqz p1, :cond_0

    .line 1276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/message/ChatActivity;->B:Z

    .line 1277
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1278
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1284
    :goto_0
    return-void

    .line 1280
    :cond_0
    iput-boolean v1, p0, Lcom/xueqiu/android/message/ChatActivity;->B:Z

    .line 1281
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1282
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->r:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    return-object v0
.end method

.method private c(JZ)Lcom/xueqiu/android/message/model/Talk;
    .locals 3

    .prologue
    .line 924
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalk(JZ)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    .line 925
    if-nez v0, :cond_1

    .line 926
    if-eqz p3, :cond_2

    .line 927
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/xueqiu/android/base/storage/DBManager;->getIMGroupById(J)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v1

    .line 928
    if-eqz v1, :cond_0

    .line 929
    invoke-static {v1}, Lcom/xueqiu/android/message/model/Talk;->from(Lcom/xueqiu/android/message/model/IMGroup;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    .line 937
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 938
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalk(Lcom/xueqiu/android/message/model/Talk;)V

    .line 941
    :cond_1
    return-object v0

    .line 932
    :cond_2
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    .line 933
    if-eqz v1, :cond_0

    .line 934
    invoke-static {v1}, Lcom/xueqiu/android/message/model/Talk;->from(Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Lcom/snowballfinance/messageplatform/data/Menu;)V
    .locals 13

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1170
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Menu;->getMenuItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Menu;->getMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1171
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Menu;->getMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 1172
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Menu;->getMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowballfinance/messageplatform/data/MenuItem;

    .line 1173
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v6, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1175
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getSubItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getSubItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1176
    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030179

    iget-object v4, p0, Lcom/xueqiu/android/message/ChatActivity;->A:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1178
    new-instance v7, Landroid/widget/ListPopupWindow;

    invoke-direct {v7, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 1179
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getSubItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v8, v1, [Ljava/lang/String;

    .line 1180
    const/high16 v3, 0x42c80000    # 100.0f

    .line 1181
    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v1, v4}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v9

    .line 1182
    const/4 v1, 0x0

    move v4, v3

    move v3, v1

    :goto_1
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getSubItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 1183
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getSubItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snowballfinance/messageplatform/data/MenuItem;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v3

    .line 1184
    aget-object v1, v8, v3

    aget-object v10, v8, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080040

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v1, v10, v11}, Lcom/xueqiu/android/base/util/ay;->a(Ljava/lang/CharSequence;IF)F

    move-result v1

    .line 1185
    add-float v10, v1, v9

    cmpl-float v10, v10, v4

    if-lez v10, :cond_0

    .line 1186
    add-float v4, v1, v9

    .line 1182
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 1189
    :cond_1
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v9, 0x7f03021f

    invoke-direct {v1, v3, v9, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1190
    new-instance v3, Lcom/xueqiu/android/message/ChatActivity$39;

    invoke-direct {v3, p0, v0, v7}, Lcom/xueqiu/android/message/ChatActivity$39;-><init>(Lcom/xueqiu/android/message/ChatActivity;Lcom/snowballfinance/messageplatform/data/MenuItem;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v7, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1198
    invoke-virtual {v7, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1199
    invoke-virtual {v7, v5}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1200
    float-to-int v1, v4

    invoke-virtual {v7, v1}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 1201
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 1202
    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$40;

    invoke-direct {v1, p0, v7}, Lcom/xueqiu/android/message/ChatActivity$40;-><init>(Lcom/xueqiu/android/message/ChatActivity;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1213
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 1214
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 1215
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 1216
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 1217
    const v8, 0x7f020338

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1218
    invoke-virtual {v5, v1, v3, v4, v7}, Landroid/view/View;->setPadding(IIII)V

    move-object v1, v5

    .line 1228
    :goto_2
    iget-object v3, p0, Lcom/xueqiu/android/message/ChatActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1229
    const v3, 0x7f0e0130

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1171
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 1220
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030179

    iget-object v4, p0, Lcom/xueqiu/android/message/ChatActivity;->A:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1221
    new-instance v3, Lcom/xueqiu/android/message/ChatActivity$41;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/message/ChatActivity$41;-><init>(Lcom/xueqiu/android/message/ChatActivity;Lcom/snowballfinance/messageplatform/data/MenuItem;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1232
    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Talk;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/xueqiu/android/message/ChatActivity;->b(Lcom/xueqiu/android/message/model/Talk;)V

    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/message/ChatActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->R:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/xueqiu/android/message/ChatActivity;->m()V

    return-void
.end method

.method private f(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 283
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 284
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 285
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 286
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;

    .line 287
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->isByMyself()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getTargetReadAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gtz v1, :cond_1

    .line 288
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Message;->setStatus(I)V

    .line 290
    :cond_1
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v1

    const/4 v5, 0x7

    if-ne v1, v5, :cond_4

    .line 291
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->T:Lcom/xueqiu/android/base/storage/DBManager;

    .line 7062
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getSystemEvent()Lcom/snowballfinance/messageplatform/data/SystemEvent;

    move-result-object v5

    .line 7063
    if-nez v5, :cond_2

    .line 7064
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 292
    :goto_1
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 293
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 294
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 295
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7066
    :cond_2
    invoke-virtual {v5}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getParticipantsIds()Ljava/util/Set;

    move-result-object v5

    .line 7067
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 7068
    invoke-virtual {v1, v5}, Lcom/xueqiu/android/base/storage/DBManager;->getUsersByUserIds(Ljava/util/Set;)Lcom/xueqiu/android/base/storage/ResultSet;

    move-result-object v1

    .line 7069
    invoke-virtual {v1}, Lcom/xueqiu/android/base/storage/ResultSet;->missed()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    .line 7071
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    .line 297
    :cond_4
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->isByMyself()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->isFromGroup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->T:Lcom/xueqiu/android/base/storage/DBManager;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    .line 299
    if-nez v1, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 306
    :cond_5
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 307
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 308
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Long;

    .line 309
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 7180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 310
    new-instance v2, Lcom/xueqiu/android/message/ChatActivity$12;

    invoke-direct {v2, p0, p0, v4}, Lcom/xueqiu/android/message/ChatActivity$12;-><init>(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/base/b/q;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/base/b/ai;->a([Ljava/lang/Long;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 326
    :cond_6
    return-object p1
.end method

.method static synthetic f(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/xueqiu/android/message/ChatActivity;->n()V

    return-void
.end method

.method static synthetic g(Lcom/xueqiu/android/message/ChatActivity;)Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->U:Lcom/google/gson/Gson;

    return-object v0
.end method

.method private g(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-object p1

    .line 334
    :cond_1
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 335
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 336
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 337
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 338
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;

    .line 339
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 340
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/message/model/Message;

    .line 341
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v5

    const/16 v6, 0x64

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/xueqiu/android/message/ChatActivity;->W:Ljava/text/DateFormat;

    .line 342
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/xueqiu/android/message/ChatActivity;->W:Ljava/text/DateFormat;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 343
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/message/ChatActivity;->a(Ljava/util/Date;)Lcom/xueqiu/android/message/model/Message;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_2
    :goto_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 345
    :cond_3
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->W:Ljava/text/DateFormat;

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/xueqiu/android/message/ChatActivity;->W:Ljava/text/DateFormat;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 346
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/message/ChatActivity;->a(Ljava/util/Date;)Lcom/xueqiu/android/message/model/Message;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object p1, v2

    .line 351
    goto/16 :goto_0
.end method

.method static synthetic h(Lcom/xueqiu/android/message/ChatActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/message/ChatActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->ad:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/xueqiu/android/message/ChatActivity;)Z
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/xueqiu/android/message/ChatActivity;->t()Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    return-object v0
.end method

.method static synthetic l(Lcom/xueqiu/android/message/ChatActivity;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->J:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic l()Ljava/util/Map;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/xueqiu/android/message/ChatActivity;->X:Ljava/util/Map;

    return-object v0
.end method

.method private m()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v7, 0x0

    .line 697
    .line 22817
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalkTimeline(JZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 22818
    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->Y:Lcom/xueqiu/android/message/client/MessageService;

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 22819
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v0, v8, v12

    if-lez v0, :cond_3

    const/16 v0, 0x7d0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 22820
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v0, v8, v12

    if-lez v0, :cond_4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 22821
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v1, v8, v12

    if-lez v1, :cond_5

    move-object v1, v7

    .line 22818
    :goto_2
    invoke-static {v3, v4, v5, v0, v1}, Lcom/snowballfinance/messageplatform/a/y;->a(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;)Lcom/snowballfinance/messageplatform/a/y;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/message/client/MessageService;->a(Lcom/snowballfinance/messageplatform/a/y;)Lrx/a;

    move-result-object v0

    .line 22822
    invoke-static {}, Lrx/a/d/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/g;)Lrx/a;

    move-result-object v0

    .line 22823
    invoke-static {}, Lrx/h/p;->c()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/g;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$61;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$61;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    .line 22824
    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$60;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$60;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    .line 22833
    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$59;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$59;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    .line 22838
    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/c/g;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$58;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$58;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    .line 22849
    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v0

    .line 22857
    invoke-virtual {v0}, Lrx/a;->i()Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$57;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$57;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    .line 22863
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lrx/j;)V

    .line 698
    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->k()V

    .line 700
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->L:Lcom/xueqiu/android/message/model/Message;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->L:Lcom/xueqiu/android/message/model/Message;

    .line 23711
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v2

    .line 24069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 24077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 23711
    invoke-virtual {v1, v2, v4, v5}, Lcom/xueqiu/android/message/model/Talk;->allocateMessage(IJ)Lcom/xueqiu/android/message/model/Message;

    move-result-object v5

    .line 23712
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/xueqiu/android/message/model/Message;->setText(Ljava/lang/String;)V

    .line 23713
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/xueqiu/android/message/model/Message;->setSummary(Ljava/lang/String;)V

    .line 23714
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    .line 23715
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 24180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 23716
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Message;->getToId()J

    move-result-wide v2

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Message;->isToGroup()Z

    move-result v4

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/xueqiu/android/message/ChatActivity$55;

    invoke-direct {v6, p0, p0, v0}, Lcom/xueqiu/android/message/ChatActivity$55;-><init>(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/message/model/Message;)V

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(JZLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 702
    :goto_3
    iput-object v7, p0, Lcom/xueqiu/android/message/ChatActivity;->L:Lcom/xueqiu/android/message/model/Message;

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->M:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->M:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->b(Ljava/lang/String;)V

    .line 706
    iput-object v7, p0, Lcom/xueqiu/android/message/ChatActivity;->M:Landroid/net/Uri;

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getUserRef()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 710
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->Y:Lcom/xueqiu/android/message/client/MessageService;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getUserRef()Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/snowballfinance/messageplatform/a/y;->a(Ljava/lang/Long;)Lcom/snowballfinance/messageplatform/a/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/client/MessageService;->a(Lcom/snowballfinance/messageplatform/a/y;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$11;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$11;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    .line 711
    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    .line 710
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lrx/j;)V

    .line 727
    :cond_2
    return-void

    .line 22819
    :cond_3
    const/16 v0, 0x32

    goto/16 :goto_0

    :cond_4
    move-object v0, v7

    .line 22820
    goto/16 :goto_1

    .line 22821
    :cond_5
    const-wide v8, 0x7fffffffffffffffL

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_2

    .line 23735
    :cond_6
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 23738
    :cond_7
    invoke-virtual {p0, v5}, Lcom/xueqiu/android/message/ChatActivity;->b(Lcom/xueqiu/android/message/model/Message;)V

    goto :goto_3
.end method

.method static synthetic m(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 2

    .prologue
    .line 41968
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41969
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 152
    return-void
.end method

.method private n()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 730
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/message/client/MessageService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->Z:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/xueqiu/android/message/ChatActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 732
    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->getApplication()Landroid/app/Application;

    .line 733
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->P:Lcom/xueqiu/android/base/b/ai;

    .line 734
    const v0, 0x7f0e053e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->r:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    .line 735
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->r:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setPullLabel(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->r:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setReleaseLabel(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->r:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setDisableScrollingWhileRefreshing(Z)V

    .line 738
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->r:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setPullToRefreshEnabled(Z)V

    .line 739
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->r:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$13;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$13;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setOnRefreshListener(Lcom/xueqiu/android/common/widget/ptr/h;)V

    .line 745
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->r:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$14;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$14;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 764
    const v0, 0x7f0e0547

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SnowBallEditText;

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    .line 765
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$15;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$15;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 774
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$16;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$16;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 783
    const v0, 0x7f0e0542

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->p:Landroid/widget/LinearLayout;

    .line 784
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->p:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$17;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$17;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 790
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->K:Landroid/view/inputmethod/InputMethodManager;

    .line 791
    const v0, 0x7f0e0545

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->C:Landroid/widget/ImageButton;

    .line 792
    const v0, 0x7f0e0546

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->D:Landroid/view/View;

    .line 793
    const v0, 0x7f0e054b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->E:Landroid/widget/ImageButton;

    .line 794
    const v0, 0x7f0e02f6

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->F:Landroid/widget/ImageButton;

    .line 795
    const v0, 0x7f0e0548

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->G:Landroid/widget/ImageButton;

    .line 796
    const v0, 0x7f0e02f8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->H:Landroid/widget/ImageButton;

    .line 797
    const v0, 0x7f0e02f9

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->I:Landroid/widget/GridView;

    .line 798
    const v0, 0x7f0e0549

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->J:Landroid/widget/GridView;

    .line 799
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->J:Landroid/widget/GridView;

    new-instance v1, Lcom/xueqiu/android/message/a/r;

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {v1, p0, v2}, Lcom/xueqiu/android/message/a/r;-><init>(Landroid/content/Context;Lcom/xueqiu/android/message/model/Talk;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 800
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->J:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 801
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->J:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 802
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->I:Landroid/widget/GridView;

    new-instance v1, Lcom/xueqiu/android/message/a/j;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/a/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 803
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->I:Landroid/widget/GridView;

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$18;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$18;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 825
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->J:Landroid/widget/GridView;

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$19;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$19;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 842
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->F:Landroid/widget/ImageButton;

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$20;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$20;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 850
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->G:Landroid/widget/ImageButton;

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$21;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$21;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 859
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/message/ChatActivity;->B:Z

    .line 860
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->C:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->ac:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 863
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->E:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->ac:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 865
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->Q:Landroid/support/v4/content/r;

    .line 867
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xueqiu.android.chat.hideKeyboard"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 868
    const-string v1, "com.xueqiu.android.action.historyMessages"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 869
    const-string v1, "com.xueqiu.android.action.clearTalkHistory"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 870
    const-string v1, "com.xueqiu.android.action.serviceMenu"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 871
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 872
    const-string v1, "com.xueqiu.android.action.updateIMGroup"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 874
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->Q:Landroid/support/v4/content/r;

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 875
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$22;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$22;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 917
    invoke-direct {p0}, Lcom/xueqiu/android/message/ChatActivity;->o()V

    .line 918
    const-string v0, "IM_chat"

    .line 25088
    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 25953
    sget-object v0, Lcom/xueqiu/android/message/client/c;->n:Lrx/i/b;

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$24;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$24;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    new-instance v2, Lcom/xueqiu/android/message/ChatActivity$25;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/ChatActivity$25;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lrx/j;)V

    .line 25966
    sget-object v0, Lcom/xueqiu/android/message/client/c;->a:Lrx/i/c;

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$26;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$26;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    new-instance v2, Lcom/xueqiu/android/message/ChatActivity$27;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/ChatActivity$27;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lrx/j;)V

    .line 25978
    sget-object v0, Lcom/xueqiu/android/message/client/c;->c:Lrx/i/c;

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$28;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$28;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    new-instance v2, Lcom/xueqiu/android/message/ChatActivity$29;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/ChatActivity$29;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lrx/j;)V

    .line 25990
    sget-object v0, Lcom/xueqiu/android/message/client/c;->d:Lrx/i/c;

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$30;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$30;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    new-instance v2, Lcom/xueqiu/android/message/ChatActivity$31;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/ChatActivity$31;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lrx/j;)V

    .line 26002
    sget-object v0, Lcom/xueqiu/android/message/client/c;->b:Lrx/i/c;

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$32;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$32;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    new-instance v2, Lcom/xueqiu/android/message/ChatActivity$33;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/ChatActivity$33;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lrx/j;)V

    .line 26016
    sget-object v0, Lcom/xueqiu/android/message/client/c;->e:Lrx/i/c;

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$35;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$35;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    new-instance v2, Lcom/xueqiu/android/message/ChatActivity$36;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/ChatActivity$36;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lrx/j;)V

    .line 921
    return-void
.end method

.method static synthetic n(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 41976
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41978
    :try_start_0
    const-string v0, "output"

    .line 42000
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd_HHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 42001
    const-string v3, "%s.%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    const-string v5, "jpeg"

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 42002
    new-instance v3, Ljava/io/File;

    .line 42052
    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/d/a/c/f;->a(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v4

    .line 42002
    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42003
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->ae:Ljava/lang/String;

    .line 41978
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41982
    :goto_0
    invoke-virtual {p0, v1, v6}, Lcom/xueqiu/android/message/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 152
    return-void

    .line 41980
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private o()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1031
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->getIMGroupById(J)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->N:Lcom/xueqiu/android/message/model/IMGroup;

    .line 1033
    invoke-direct {p0}, Lcom/xueqiu/android/message/ChatActivity;->r()V

    .line 1036
    :cond_0
    sget-object v0, Lcom/xueqiu/android/message/ChatActivity;->X:Ljava/util/Map;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1037
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    sget-object v0, Lcom/xueqiu/android/message/ChatActivity;->X:Ljava/util/Map;

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1038
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setSelection(I)V

    .line 1043
    :goto_0
    invoke-direct {p0}, Lcom/xueqiu/android/message/ChatActivity;->s()V

    .line 1045
    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v1

    const/16 v4, 0x14

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getMessages(JZI)Ljava/util/List;

    move-result-object v0

    .line 1047
    sget-object v1, Lcom/xueqiu/android/message/model/Message;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1049
    new-instance v1, Lcom/xueqiu/android/message/a/d;

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/xueqiu/android/message/ChatActivity;->s:Lcom/d/a/b/f;

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/xueqiu/android/message/a/d;-><init>(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Talk;Ljava/util/List;Lcom/d/a/b/f;)V

    iput-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    .line 1050
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->r:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 26164
    invoke-direct {p0, v5}, Lcom/xueqiu/android/message/ChatActivity;->b(Z)V

    .line 26165
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->C:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1053
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getUserRef()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getUserRef()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 27059
    const-string v0, "service_menu"

    invoke-virtual {p0, v0, v5}, Lcom/xueqiu/android/message/ChatActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 27060
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27061
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 27062
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->U:Lcom/google/gson/Gson;

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->b(Lcom/google/gson/JsonObject;)Lcom/snowballfinance/messageplatform/data/Menu;

    move-result-object v0

    .line 27063
    invoke-direct {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->b(Lcom/snowballfinance/messageplatform/data/Menu;)V

    .line 27064
    invoke-direct {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->c(Lcom/snowballfinance/messageplatform/data/Menu;)V

    .line 1056
    :cond_1
    return-void

    .line 1040
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic o(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 2

    .prologue
    .line 42986
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/SearchNameCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42987
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 152
    return-void
.end method

.method private p()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1423
    iput v3, p0, Lcom/xueqiu/android/message/ChatActivity;->O:I

    .line 1424
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->K:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->x:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 1425
    iget v0, p0, Lcom/xueqiu/android/message/ChatActivity;->O:I

    invoke-direct {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->b(I)V

    .line 1426
    return-void
.end method

.method static synthetic p(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 2

    .prologue
    .line 42991
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/stock/SearchStockActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42992
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 152
    return-void
.end method

.method private q()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1429
    iput v3, p0, Lcom/xueqiu/android/message/ChatActivity;->O:I

    .line 1430
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->K:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->x:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 1431
    const v0, 0x7f0e02f9

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1432
    const v0, 0x7f0e0549

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1433
    iget v0, p0, Lcom/xueqiu/android/message/ChatActivity;->O:I

    invoke-direct {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->b(I)V

    .line 1434
    return-void
.end method

.method static synthetic q(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/xueqiu/android/message/ChatActivity;->q()V

    return-void
.end method

.method private r()V
    .locals 4

    .prologue
    const v3, 0x7f0e02f8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2021
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->N:Lcom/xueqiu/android/message/model/IMGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->N:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->isJoined()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2022
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->F:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2023
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->G:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2024
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setEnabled(Z)V

    .line 2025
    invoke-virtual {p0, v3}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2032
    :goto_0
    return-void

    .line 2027
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->F:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2028
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->G:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2029
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setEnabled(Z)V

    .line 2030
    invoke-virtual {p0, v3}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic r(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 152
    .line 43395
    iget v0, p0, Lcom/xueqiu/android/message/ChatActivity;->O:I

    if-eq v0, v1, :cond_1

    .line 43396
    iput v1, p0, Lcom/xueqiu/android/message/ChatActivity;->O:I

    .line 43397
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->K:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->x:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v0

    .line 43398
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->J:Landroid/widget/GridView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 43399
    if-nez v0, :cond_0

    .line 43400
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->I:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 43402
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/message/ChatActivity;->O:I

    invoke-direct {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->b(I)V

    .line 43403
    :goto_0
    return-void

    .line 43404
    :cond_1
    invoke-direct {p0}, Lcom/xueqiu/android/message/ChatActivity;->p()V

    goto :goto_0
.end method

.method private s()V
    .locals 5

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2036
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->T:Lcom/xueqiu/android/base/storage/DBManager;

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->getIMGroupById(J)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setGroupRef(Lcom/xueqiu/android/message/model/IMGroup;)V

    .line 2037
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    const-string v1, "%s(%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Talk;->getGroupRef()Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/IMGroup;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Talk;->getGroupRef()Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/IMGroup;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    .line 2044
    :cond_0
    :goto_0
    iget v0, p0, Lcom/xueqiu/android/message/ChatActivity;->S:I

    packed-switch v0, :pswitch_data_0

    .line 2055
    :goto_1
    return-void

    .line 2039
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->T:Lcom/xueqiu/android/base/storage/DBManager;

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setUserRef(Lcom/xueqiu/android/community/model/User;)V

    .line 2040
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getUserRef()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2041
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getUserRef()Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 37066
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 2046
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 38066
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 2049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(\u8fde\u63a5\u4e2d...)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 39066
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 2052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(\u672a\u8fde\u63a5)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2044
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic s(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 152
    .line 43409
    iget v0, p0, Lcom/xueqiu/android/message/ChatActivity;->O:I

    if-eq v0, v1, :cond_1

    .line 43410
    iput v1, p0, Lcom/xueqiu/android/message/ChatActivity;->O:I

    .line 43411
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->K:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->x:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v0

    .line 43412
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->I:Landroid/widget/GridView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 43413
    if-nez v0, :cond_0

    .line 43414
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->J:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 43416
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/message/ChatActivity;->O:I

    invoke-direct {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->b(I)V

    .line 43417
    :goto_0
    return-void

    .line 43418
    :cond_1
    invoke-direct {p0}, Lcom/xueqiu/android/message/ChatActivity;->p()V

    goto :goto_0
.end method

.method static synthetic t(Lcom/xueqiu/android/message/ChatActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->G:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private t()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 39069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v1

    .line 39186
    iget-boolean v1, v1, Lcom/xueqiu/android/base/t;->d:Z

    .line 2058
    if-eqz v1, :cond_0

    .line 40152
    invoke-static {p0, v0}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 2060
    const/4 v0, 0x1

    .line 2062
    :cond_0
    return v0
.end method

.method static synthetic u(Lcom/xueqiu/android/message/ChatActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->H:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic v(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/xueqiu/android/message/ChatActivity;->s()V

    return-void
.end method

.method static synthetic w(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 2

    .prologue
    .line 152
    .line 44287
    iget-boolean v0, p0, Lcom/xueqiu/android/message/ChatActivity;->B:Z

    if-eqz v0, :cond_0

    .line 44288
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->ab:Landroid/view/animation/Animation;

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$43;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$43;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 44305
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->z:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->ab:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    .line 44307
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44308
    invoke-direct {p0}, Lcom/xueqiu/android/message/ChatActivity;->q()V

    .line 44310
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->ab:Landroid/view/animation/Animation;

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$44;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$44;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 44327
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->y:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->ab:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic x(Lcom/xueqiu/android/message/ChatActivity;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->aa:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic y(Lcom/xueqiu/android/message/ChatActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->y:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic z(Lcom/xueqiu/android/message/ChatActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->z:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/xueqiu/android/message/model/Message;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/message/model/Message;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/16 v2, 0x14

    .line 214
    if-eqz p1, :cond_0

    .line 215
    :try_start_0
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    const/16 v1, 0x14

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v3}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getMessages(Lcom/xueqiu/android/message/model/Message;IZ)Ljava/util/List;

    move-result-object v0

    .line 220
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 278
    :goto_1
    return-object v0

    .line 217
    :cond_0
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v4

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v1

    const/16 v3, 0x14

    invoke-virtual {v0, v4, v5, v1, v3}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getMessages(JZI)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    .line 225
    :goto_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 226
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->R:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 227
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x14

    .line 228
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    move v11, v1

    move-object v1, v0

    move v0, v11

    .line 231
    :goto_3
    iget-object v3, p0, Lcom/xueqiu/android/message/ChatActivity;->Y:Lcom/xueqiu/android/message/client/MessageService;

    if-eqz v3, :cond_2

    .line 234
    iget-object v3, p0, Lcom/xueqiu/android/message/ChatActivity;->Y:Lcom/xueqiu/android/message/client/MessageService;

    iget-object v4, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/snowballfinance/messageplatform/a/y;->a(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;)Lcom/snowballfinance/messageplatform/a/y;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/message/client/MessageService;->a(Lcom/snowballfinance/messageplatform/a/y;)Lrx/a;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/message/ChatActivity$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/xueqiu/android/message/ChatActivity$1;-><init>(Lcom/xueqiu/android/message/ChatActivity;ILjava/util/Date;)V

    .line 235
    invoke-virtual {v3, v4}, Lrx/a;->c(Lrx/c/b;)Lrx/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :cond_2
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 223
    :cond_3
    :try_start_1
    new-instance v1, Ljava/util/Date;

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 275
    :catch_0
    move-exception v0

    .line 276
    const-string v1, "ChatActivity"

    const-string v3, "Load messages [until:%s] [size:%d] failed."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_3
.end method

.method public final declared-synchronized a(JZ)V
    .locals 3

    .prologue
    .line 569
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    if-ne p3, v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    .line 19180
    iget-object v0, v0, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    .line 570
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 571
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/d;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    :cond_0
    monitor-exit p0

    return-void

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/snowballfinance/messageplatform/data/Menu;)V
    .locals 4

    .prologue
    .line 585
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Menu;->getUserId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 586
    invoke-direct {p0, p1}, Lcom/xueqiu/android/message/ChatActivity;->b(Lcom/snowballfinance/messageplatform/data/Menu;)V

    .line 587
    invoke-direct {p0, p1}, Lcom/xueqiu/android/message/ChatActivity;->c(Lcom/snowballfinance/messageplatform/data/Menu;)V

    .line 589
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1254
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 1255
    :goto_0
    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->p:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 1256
    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1257
    iput v1, p0, Lcom/xueqiu/android/message/ChatActivity;->v:I

    .line 1258
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1261
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1254
    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    if-eqz v0, :cond_1

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 400
    invoke-static {p1}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$45;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$45;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v4

    .line 407
    const-wide v0, 0x7fffffffffffffffL

    .line 409
    iget-object v5, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    .line 8180
    iget-object v5, v5, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    .line 409
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 410
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    .line 9180
    iget-object v0, v0, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    .line 410
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    .line 10180
    iget-object v1, v1, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    .line 410
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 413
    :cond_0
    iget-object v5, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    .line 11180
    iget-object v5, v5, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    .line 413
    invoke-static {v5}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v5

    new-instance v6, Lcom/xueqiu/android/message/ChatActivity$56;

    invoke-direct {v6, p0}, Lcom/xueqiu/android/message/ChatActivity$56;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v5, v6}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v5

    .line 420
    invoke-virtual {v4, v5}, Lrx/a;->a(Lrx/a;)Lrx/a;

    move-result-object v5

    new-instance v6, Lcom/xueqiu/android/message/ChatActivity$3;

    invoke-direct {v6, p0}, Lcom/xueqiu/android/message/ChatActivity$3;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    .line 11965
    new-instance v7, Lrx/d/a/k;

    invoke-direct {v7, v6}, Lrx/d/a/k;-><init>(Lrx/c/f;)V

    invoke-virtual {v5, v7}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v5

    .line 420
    new-instance v6, Lcom/xueqiu/android/message/ChatActivity$2;

    invoke-direct {v6, p0}, Lcom/xueqiu/android/message/ChatActivity$2;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    .line 426
    invoke-virtual {v5, v6}, Lrx/a;->b(Lrx/c/g;)Lrx/a;

    move-result-object v5

    new-instance v6, Lcom/xueqiu/android/message/ChatActivity$69;

    invoke-direct {v6, p0}, Lcom/xueqiu/android/message/ChatActivity$69;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    .line 432
    invoke-virtual {v5, v6}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v5

    new-instance v6, Lcom/xueqiu/android/message/ChatActivity$68;

    invoke-direct {v6, p0}, Lcom/xueqiu/android/message/ChatActivity$68;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    .line 437
    invoke-virtual {v5, v6}, Lrx/a;->a(Lrx/c/b;)Lrx/a;

    move-result-object v5

    new-instance v6, Lcom/xueqiu/android/message/ChatActivity$67;

    invoke-direct {v6, p0, v2, v3}, Lcom/xueqiu/android/message/ChatActivity$67;-><init>(Lcom/xueqiu/android/message/ChatActivity;J)V

    .line 442
    invoke-virtual {v5, v6}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 452
    new-instance v2, Lcom/xueqiu/android/message/ChatActivity$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/xueqiu/android/message/ChatActivity$5;-><init>(Lcom/xueqiu/android/message/ChatActivity;J)V

    invoke-virtual {v4, v2}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v0

    .line 12577
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lrx/a$9;

    invoke-direct {v2, v0}, Lrx/a$9;-><init>(Lrx/a;)V

    .line 13442
    new-instance v3, Lrx/d/a/y;

    invoke-direct {v3, v1, v2}, Lrx/d/a/y;-><init>(Ljava/lang/Object;Lrx/c/g;)V

    invoke-virtual {v0, v3}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    .line 13409
    invoke-virtual {v0}, Lrx/a;->h()Lrx/a;

    move-result-object v0

    .line 457
    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$4;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    :cond_1
    monitor-exit p0

    return-void

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(JZ)V
    .locals 3

    .prologue
    .line 577
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 20066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 578
    const-string v1, "\u8f93\u5165\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    .line 582
    :goto_0
    return-void

    .line 580
    :cond_0
    invoke-direct {p0}, Lcom/xueqiu/android/message/ChatActivity;->s()V

    goto :goto_0
.end method

.method final declared-synchronized b(Lcom/xueqiu/android/message/model/Message;)V
    .locals 2

    .prologue
    .line 1650
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setStatus(I)V

    .line 1651
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/message/a/d;->a(Lcom/xueqiu/android/message/model/Message;)V

    .line 1652
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    .line 1653
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveMessage(Lcom/xueqiu/android/message/model/Message;)V

    .line 1654
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->b(Lcom/xueqiu/android/message/model/Talk;)V

    .line 1655
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalk(Lcom/xueqiu/android/message/model/Talk;)V

    .line 1657
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1658
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->toPlatformMessage()Lcom/snowballfinance/messageplatform/data/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1659
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->Y:Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/a/y;->a(Ljava/util/List;)Lcom/snowballfinance/messageplatform/a/y;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/client/MessageService;->a(Lcom/snowballfinance/messageplatform/a/y;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$53;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/message/ChatActivity$53;-><init>(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Message;)V

    .line 1660
    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1687
    monitor-exit p0

    return-void

    .line 1650
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1515
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1516
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->e(Ljava/util/List;)V

    .line 1517
    return-void
.end method

.method public final declared-synchronized b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 474
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->r:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f()V

    .line 475
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 520
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 478
    :cond_1
    if-eqz p1, :cond_0

    .line 481
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 482
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;

    .line 483
    iget-object v4, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/message/model/Message;->belongTo(Lcom/xueqiu/android/message/model/Talk;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 484
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 487
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 489
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->R:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 491
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->R:Ljava/util/List;

    sget-object v2, Lcom/xueqiu/android/message/model/Message;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 498
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->R:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 499
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 500
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->r:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    .line 501
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->r:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 502
    if-nez v0, :cond_5

    move v0, v1

    .line 503
    :goto_2
    invoke-static {v2}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    .line 14180
    iget-object v2, v2, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    .line 503
    invoke-static {v2}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/a;->a(Lrx/a;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/ChatActivity$7;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/ChatActivity$7;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v1, v2}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v1

    .line 508
    invoke-virtual {v1}, Lrx/a;->i()Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/ChatActivity$6;

    invoke-direct {v2, p0, v4, v3, v0}, Lcom/xueqiu/android/message/ChatActivity$6;-><init>(Lcom/xueqiu/android/message/ChatActivity;III)V

    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    goto/16 :goto_0

    .line 502
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getTop()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_2
.end method

.method public final declared-synchronized c(Lcom/xueqiu/android/message/model/Message;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1743
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/message/a/d;->b(Lcom/xueqiu/android/message/model/Message;)V

    .line 1744
    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v1

    .line 1745
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getSequence()J

    move-result-wide v4

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v6

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->deleteMessage(JJJZ)V

    .line 1746
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/xueqiu/android/message/model/Message;->setCreatedAt(Ljava/util/Date;)V

    .line 1747
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xueqiu/android/message/model/Message;->setStatus(I)V

    .line 1748
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1749
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 1750
    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1751
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1756
    :goto_0
    monitor-exit p0

    return-void

    .line 1755
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/message/ChatActivity;->b(Lcom/xueqiu/android/message/model/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1743
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Talk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    if-eqz v0, :cond_1

    .line 525
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 526
    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/message/model/Talk;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    .line 528
    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->b()V

    .line 529
    invoke-direct {p0}, Lcom/xueqiu/android/message/ChatActivity;->s()V

    goto :goto_0

    .line 533
    :cond_1
    return-void
.end method

.method public final declared-synchronized d(Lcom/xueqiu/android/message/model/Message;)V
    .locals 9

    .prologue
    .line 1759
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getSequence()J

    move-result-wide v4

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v6

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->deleteMessage(JJJZ)V

    .line 1760
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/message/a/d;->b(Lcom/xueqiu/android/message/model/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1761
    monitor-exit p0

    return-void

    .line 1759
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Read;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 537
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    if-eqz v0, :cond_5

    .line 538
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 539
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Read;

    .line 540
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Read;->getToId()J

    move-result-wide v6

    .line 15069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 15077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v8

    .line 540
    cmp-long v1, v6, v8

    if-nez v1, :cond_0

    .line 541
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Read;->getFromId()J

    move-result-wide v6

    .line 542
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Read;->getTimestamp()J

    move-result-wide v0

    .line 543
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 544
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_2

    .line 545
    iget-object v5, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lcom/xueqiu/android/message/model/Talk;->setTargetReadAt(Ljava/util/Date;)V

    .line 549
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 550
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    .line 18180
    iget-object v0, v0, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    .line 550
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;

    .line 551
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->isByMyself()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v6

    if-nez v6, :cond_6

    .line 552
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v8}, Lcom/xueqiu/android/message/model/Talk;->getTargetReadAt()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_6

    .line 553
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Message;->setStatus(I)V

    .line 554
    const/4 v0, 0x1

    :goto_3
    move v1, v0

    .line 556
    goto :goto_2

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    .line 15180
    iget-object v0, v0, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    .line 546
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 547
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    .line 16180
    iget-object v0, v0, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    .line 547
    iget-object v5, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    .line 17180
    iget-object v5, v5, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    .line 547
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/model/Talk;->setTargetReadAt(Ljava/util/Date;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 557
    :cond_3
    if-eqz v1, :cond_0

    .line 558
    :try_start_1
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/d;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 563
    :cond_4
    const-string v0, "ChatActivity"

    const-string v1, "onRead:%dms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method public final e(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1520
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1521
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33087
    new-instance v3, Lcom/xueqiu/android/message/ChatActivity$66;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/message/ChatActivity$66;-><init>(Lcom/xueqiu/android/message/ChatActivity;Ljava/lang/String;)V

    invoke-static {v3}, Lrx/a;->a(Lrx/b;)Lrx/a;

    move-result-object v0

    .line 1522
    sget-object v3, Lcom/xueqiu/android/base/util/ag;->b:Lrx/g;

    invoke-virtual {v0, v3}, Lrx/a;->b(Lrx/g;)Lrx/a;

    move-result-object v0

    .line 1523
    invoke-static {}, Lrx/a/d/a;->a()Lrx/g;

    move-result-object v3

    invoke-virtual {v0, v3}, Lrx/a;->a(Lrx/g;)Lrx/a;

    move-result-object v0

    new-instance v3, Lcom/xueqiu/android/message/ChatActivity$50;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/message/ChatActivity$50;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    .line 1524
    invoke-virtual {v0, v3}, Lrx/a;->d(Lrx/c/f;)Lrx/a;

    move-result-object v0

    new-instance v3, Lcom/xueqiu/android/message/ChatActivity$49;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/message/ChatActivity$49;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    .line 1531
    invoke-virtual {v0, v3}, Lrx/a;->b(Lrx/c/b;)Lrx/a;

    move-result-object v0

    .line 1542
    invoke-virtual {v0}, Lrx/a;->e()Lrx/a;

    move-result-object v0

    .line 1543
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1564
    :cond_0
    invoke-static {v1}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$52;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$52;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v0

    .line 1576
    invoke-virtual {v0}, Lrx/a;->i()Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$51;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$51;-><init>(Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 1624
    return-void
.end method

.method protected final j()Z
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->r:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->r:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()V
    .locals 6

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setUnread(I)Lcom/xueqiu/android/message/model/Talk;

    .line 1481
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->T:Lcom/xueqiu/android/base/storage/DBManager;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/storage/DBManager;->markTalkRead(Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 1482
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->Y:Lcom/xueqiu/android/message/client/MessageService;

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->Y:Lcom/xueqiu/android/message/client/MessageService;

    .line 30069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 30077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 1483
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v4

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v1

    invoke-static {v2, v3, v4, v5, v1}, Lcom/xueqiu/android/message/model/Commands;->read(JJZ)Lcom/snowballfinance/messageplatform/a/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/client/MessageService;->a(Lcom/snowballfinance/messageplatform/a/a;)V

    .line 1485
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const v7, 0x7f0701af

    const/4 v6, 0x0

    const v5, 0x7f070409

    const v4, 0x7f0700b1

    const v3, 0x7f070070

    .line 1887
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1946
    :goto_0
    return-void

    .line 1890
    :cond_0
    if-nez p1, :cond_2

    .line 1891
    const-string v0, "IM_chat_album"

    .line 33088
    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1892
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/message/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1893
    invoke-virtual {p0, v4}, Lcom/xueqiu/android/message/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/ChatActivity$62;

    invoke-direct {v2, p0, p3}, Lcom/xueqiu/android/message/ChatActivity$62;-><init>(Lcom/xueqiu/android/message/ChatActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1906
    invoke-virtual {p0, v5}, Lcom/xueqiu/android/message/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v7}, Lcom/xueqiu/android/message/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1945
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 1907
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 1908
    const-string v0, "IM_chat_camera"

    .line 34088
    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1909
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1910
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->ae:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1911
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1912
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1913
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1914
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/message/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1915
    invoke-virtual {p0, v4}, Lcom/xueqiu/android/message/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/message/ChatActivity$63;

    invoke-direct {v3, p0, v1}, Lcom/xueqiu/android/message/ChatActivity$63;-><init>(Lcom/xueqiu/android/message/ChatActivity;Landroid/net/Uri;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1920
    invoke-virtual {p0, v5}, Lcom/xueqiu/android/message/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v7}, Lcom/xueqiu/android/message/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 1921
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 1922
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/d;->a()V

    .line 1923
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/d;->notifyDataSetChanged()V

    goto :goto_1

    .line 1924
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 1925
    const-string v0, "IM_chat_name_card"

    .line 35088
    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1926
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/message/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1927
    invoke-virtual {p0, v4}, Lcom/xueqiu/android/message/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/ChatActivity$64;

    invoke-direct {v2, p0, p3}, Lcom/xueqiu/android/message/ChatActivity$64;-><init>(Lcom/xueqiu/android/message/ChatActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1933
    invoke-virtual {p0, v5}, Lcom/xueqiu/android/message/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0701b0

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 1934
    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1935
    const-string v0, "IM_chat_stock"

    .line 36088
    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1936
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/message/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1937
    invoke-virtual {p0, v4}, Lcom/xueqiu/android/message/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/ChatActivity$65;

    invoke-direct {v2, p0, p3}, Lcom/xueqiu/android/message/ChatActivity$65;-><init>(Lcom/xueqiu/android/message/ChatActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1943
    invoke-virtual {p0, v5}, Lcom/xueqiu/android/message/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0701b1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    .line 619
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 620
    const v0, 0x7f03015f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->setContentView(I)V

    .line 622
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->s:Lcom/d/a/b/f;

    .line 623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->R:Ljava/util/List;

    .line 625
    const v0, 0x7f04001c

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->aa:Landroid/view/animation/Animation;

    .line 626
    const v0, 0x7f04001d

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->ab:Landroid/view/animation/Animation;

    .line 628
    const v0, 0x7f0e0544

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->y:Landroid/widget/LinearLayout;

    .line 629
    const v0, 0x7f0e054a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->z:Landroid/widget/LinearLayout;

    .line 630
    const v0, 0x7f0e054d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->A:Landroid/widget/LinearLayout;

    .line 631
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->T:Lcom/xueqiu/android/base/storage/DBManager;

    .line 633
    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "talk"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    .line 634
    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->L:Lcom/xueqiu/android/message/model/Message;

    .line 635
    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_image_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->M:Landroid/net/Uri;

    .line 636
    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_talk_id"

    invoke-virtual {v0, v1, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 637
    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "extra_talk_is_group"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 639
    invoke-static {}, Lrx/h/p;->c()Lrx/g;

    move-result-object v5

    invoke-virtual {v5}, Lrx/g;->a()Lrx/h;

    move-result-object v5

    iput-object v5, p0, Lcom/xueqiu/android/message/ChatActivity;->u:Lrx/h;

    .line 641
    cmp-long v5, v0, v10

    if-lez v5, :cond_0

    .line 642
    invoke-direct {p0, v0, v1, v2}, Lcom/xueqiu/android/message/ChatActivity;->c(JZ)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v5

    iput-object v5, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    .line 645
    :cond_0
    iget-object v5, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    .line 20945
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 20946
    iget-object v6, p0, Lcom/xueqiu/android/message/ChatActivity;->T:Lcom/xueqiu/android/base/storage/DBManager;

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/xueqiu/android/base/storage/DBManager;->getIMGroupById(J)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 645
    :cond_1
    :goto_0
    if-nez v3, :cond_8

    .line 646
    :cond_2
    iget-object v3, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    if-eqz v3, :cond_3

    .line 647
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v0

    .line 648
    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v2

    .line 650
    :cond_3
    cmp-long v3, v0, v10

    if-gtz v3, :cond_6

    .line 651
    const-string v0, "\u975e\u6cd5\u7684\u5bf9\u8bddID"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->finish()V

    .line 694
    :goto_1
    return-void

    :cond_4
    move v3, v4

    .line 20946
    goto :goto_0

    .line 20948
    :cond_5
    iget-object v6, p0, Lcom/xueqiu/android/message/ChatActivity;->T:Lcom/xueqiu/android/base/storage/DBManager;

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v5

    if-nez v5, :cond_1

    move v3, v4

    goto :goto_0

    .line 655
    :cond_6
    if-nez v2, :cond_7

    .line 656
    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->h()Landroid/app/Dialog;

    .line 21180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    .line 657
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$9;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/message/ChatActivity$9;-><init>(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 21934
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lcom/xueqiu/android/base/b/ai;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_1

    .line 674
    :cond_7
    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->h()Landroid/app/Dialog;

    .line 22180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    .line 675
    new-instance v3, Lcom/xueqiu/android/message/ChatActivity$10;

    invoke-direct {v3, p0, p0}, Lcom/xueqiu/android/message/ChatActivity$10;-><init>(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/xueqiu/android/base/b/ai;->n(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_1

    .line 692
    :cond_8
    invoke-direct {p0}, Lcom/xueqiu/android/message/ChatActivity;->n()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 1767
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    if-nez v1, :cond_0

    .line 1787
    :goto_0
    return v0

    .line 1771
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1772
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->N:Lcom/xueqiu/android/message/model/IMGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->N:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/IMGroup;->isJoined()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1773
    :cond_1
    const-string v1, "\u8bbe\u7f6e"

    invoke-interface {p1, v0, v4, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020274

    .line 1774
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1773
    invoke-static {v0, v5}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 1787
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    .line 1777
    :cond_3
    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-array v2, v4, [I

    const v3, 0x7f0100ae

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1778
    const-string v2, "\u8bbe\u7f6e"

    invoke-interface {p1, v0, v4, v0, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 1779
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1778
    invoke-static {v0, v5}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 1782
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1873
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onDestroy()V

    .line 1874
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->u:Lrx/h;

    if-eqz v0, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->u:Lrx/h;

    invoke-virtual {v0}, Lrx/h;->b()V

    .line 1877
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->Y:Lcom/xueqiu/android/message/client/MessageService;

    if-eqz v0, :cond_1

    .line 1878
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->Z:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1880
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->Q:Landroid/support/v4/content/r;

    if-eqz v0, :cond_2

    .line 1881
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->Q:Landroid/support/v4/content/r;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 1883
    :cond_2
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 2009
    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 2011
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2012
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xueqiu/android/message/ChatActivity;->O:I

    if-eqz v0, :cond_0

    .line 2013
    invoke-direct {p0}, Lcom/xueqiu/android/message/ChatActivity;->q()V

    .line 2014
    const/4 v0, 0x1

    .line 2017
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/b;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 1075
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onNewIntent(Landroid/content/Intent;)V

    .line 1076
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/d;->a()V

    .line 28066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 1077
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    .line 1079
    const-string v0, "talk"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 1080
    const-string v1, "extra_message"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/message/model/Message;

    iput-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->L:Lcom/xueqiu/android/message/model/Message;

    .line 1081
    const-string v1, "extra_image_uri"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->M:Landroid/net/Uri;

    .line 1082
    const-string v1, "extra_talk_id"

    invoke-virtual {p1, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1083
    const-string v1, "extra_talk_is_group"

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1084
    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    .line 1085
    invoke-direct {p0, v2, v3, v1}, Lcom/xueqiu/android/message/ChatActivity;->c(JZ)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    .line 1087
    :cond_0
    if-eqz v0, :cond_1

    .line 1088
    invoke-direct {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/model/Talk;)V

    .line 1125
    :goto_0
    return-void

    .line 1089
    :cond_1
    cmp-long v0, v2, v6

    if-lez v0, :cond_3

    .line 1090
    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->h()Landroid/app/Dialog;

    .line 1091
    if-eqz v1, :cond_2

    .line 28180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 1092
    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$37;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/message/ChatActivity$37;-><init>(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->n(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0

    .line 29180
    :cond_2
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 1107
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/ChatActivity$38;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/message/ChatActivity$38;-><init>(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 29934
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/xueqiu/android/base/b/ai;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0

    .line 1123
    :cond_3
    const-string v0, "\u975e\u6cd5\u7684\u5bf9\u8bddID"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 1792
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1793
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->N:Lcom/xueqiu/android/message/model/IMGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->N:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->isJoined()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->N:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->isTruncated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1794
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1795
    const-string v1, "extra_talk"

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1796
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1800
    :cond_2
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 1868
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onPause()V

    .line 1869
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 1805
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onResume()V

    .line 1807
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    if-eqz v0, :cond_0

    .line 1808
    invoke-virtual {p0}, Lcom/xueqiu/android/message/ChatActivity;->k()V

    .line 1809
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v0

    long-to-int v0, v0

    sget-object v1, Lcom/xueqiu/android/base/util/aa;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1810
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ChatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1811
    sget-object v1, Lcom/xueqiu/android/base/util/aa;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1814
    :cond_0
    return-void
.end method

.method public send(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1488
    invoke-direct {p0}, Lcom/xueqiu/android/message/ChatActivity;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1497
    :goto_0
    return-void

    .line 1491
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getPlainText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1492
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 31060
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move-object v0, v2

    .line 31508
    :goto_1
    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    .line 32069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 32077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 31508
    invoke-virtual {v2, v1, v4, v5}, Lcom/xueqiu/android/message/model/Talk;->allocateMessage(IJ)Lcom/xueqiu/android/message/model/Message;

    move-result-object v1

    .line 31509
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/model/Message;->setText(Ljava/lang/String;)V

    .line 31510
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/ChatActivity;->b(Lcom/xueqiu/android/message/model/Message;)V

    .line 1495
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1496
    sget-object v0, Lcom/xueqiu/android/message/ChatActivity;->X:Ljava/util/Map;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 31063
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 31064
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 31065
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 31066
    const v5, 0xfffc

    if-eq v4, v5, :cond_4

    .line 31067
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31064
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 31070
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
