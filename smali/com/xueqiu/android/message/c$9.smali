.class final Lcom/xueqiu/android/message/c$9;
.super Ljava/lang/Object;
.source "RecentTalkFragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/c;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/c;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/xueqiu/android/message/c$9;->a:Lcom/xueqiu/android/message/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 346
    check-cast p1, Ljava/lang/Integer;

    .line 1349
    iget-object v0, p0, Lcom/xueqiu/android/message/c$9;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/c;->f(Lcom/xueqiu/android/message/c;I)I

    .line 1350
    iget-object v0, p0, Lcom/xueqiu/android/message/c$9;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/c;->g(Lcom/xueqiu/android/message/c;I)Lcom/xueqiu/android/community/model/UserNotification;

    move-result-object v0

    .line 1351
    iget-object v1, p0, Lcom/xueqiu/android/message/c$9;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "key_new_follower"

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    iget-object v0, p0, Lcom/xueqiu/android/message/c$9;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->f(Lcom/xueqiu/android/message/c;)V

    .line 346
    return-void
.end method
