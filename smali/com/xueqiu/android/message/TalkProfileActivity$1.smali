.class final Lcom/xueqiu/android/message/TalkProfileActivity$1;
.super Ljava/lang/Object;
.source "TalkProfileActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/TalkProfileActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/TalkProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/TalkProfileActivity;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$1;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$1;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    check-cast p2, Lcom/xueqiu/android/message/client/b;

    .line 1022
    iget-object v0, p2, Lcom/xueqiu/android/message/client/b;->a:Ljava/lang/Object;

    .line 116
    check-cast v0, Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v1, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->a(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/message/client/MessageService;)Lcom/xueqiu/android/message/client/MessageService;

    .line 117
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$1;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->a(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/message/client/MessageService;)Lcom/xueqiu/android/message/client/MessageService;

    .line 122
    return-void
.end method
