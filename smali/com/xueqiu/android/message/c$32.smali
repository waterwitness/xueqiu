.class final Lcom/xueqiu/android/message/c$32;
.super Ljava/lang/Object;
.source "RecentTalkFragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/c;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lcom/xueqiu/android/community/model/UserNotification;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/c;)V
    .locals 0

    .prologue
    .line 923
    iput-object p1, p0, Lcom/xueqiu/android/message/c$32;->a:Lcom/xueqiu/android/message/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 923
    check-cast p1, Lcom/xueqiu/android/community/model/UserNotification;

    .line 1926
    if-eqz p1, :cond_0

    .line 1927
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/UserNotification;->getDesc()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<a.*?>(.*?)</a>"

    const-string v2, "$1"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xueqiu/android/community/model/UserNotification;->setDesc(Ljava/lang/String;)V

    .line 1928
    iget-object v0, p0, Lcom/xueqiu/android/message/c$32;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_new_paid_mention"

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :cond_0
    return-void
.end method
