.class final Lcom/xueqiu/android/message/client/a$47;
.super Ljava/lang/Object;
.source "CommandHandler.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/client/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/message/model/Talk;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/client/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/a;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/xueqiu/android/message/client/a$47;->a:Lcom/xueqiu/android/message/client/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 607
    check-cast p1, Ljava/util/List;

    .line 1610
    iget-object v0, p0, Lcom/xueqiu/android/message/client/a$47;->a:Lcom/xueqiu/android/message/client/a;

    .line 2065
    iget-object v0, v0, Lcom/xueqiu/android/message/client/a;->a:Landroid/content/Context;

    .line 1610
    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalks(Ljava/util/List;)V

    .line 1611
    sget-object v0, Lcom/xueqiu/android/message/client/c;->c:Lrx/i/c;

    invoke-virtual {v0, p1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    .line 607
    return-void
.end method
