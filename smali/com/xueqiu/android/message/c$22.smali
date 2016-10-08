.class final Lcom/xueqiu/android/message/c$22;
.super Ljava/lang/Object;
.source "RecentTalkFragment.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/c;->a(Lcom/xueqiu/android/message/model/Talk;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/model/Talk;

.field final synthetic b:Lcom/xueqiu/android/message/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/message/model/Talk;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/xueqiu/android/message/c$22;->b:Lcom/xueqiu/android/message/c;

    iput-object p2, p0, Lcom/xueqiu/android/message/c$22;->a:Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/xueqiu/android/message/c$22;->b:Lcom/xueqiu/android/message/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/c$22;->a:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalk(Lcom/xueqiu/android/message/model/Talk;)V

    .line 720
    return-void
.end method
