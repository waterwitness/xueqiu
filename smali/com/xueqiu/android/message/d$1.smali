.class final Lcom/xueqiu/android/message/d$1;
.super Ljava/lang/Object;
.source "TalkListFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/d;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/d;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/xueqiu/android/message/d$1;->a:Lcom/xueqiu/android/message/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/xueqiu/android/message/d$1;->a:Lcom/xueqiu/android/message/d;

    check-cast p2, Lcom/xueqiu/android/message/client/b;

    .line 1022
    iget-object v0, p2, Lcom/xueqiu/android/message/client/b;->a:Ljava/lang/Object;

    .line 77
    check-cast v0, Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v1, v0}, Lcom/xueqiu/android/message/d;->a(Lcom/xueqiu/android/message/d;Lcom/xueqiu/android/message/client/MessageService;)Lcom/xueqiu/android/message/client/MessageService;

    .line 78
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method
