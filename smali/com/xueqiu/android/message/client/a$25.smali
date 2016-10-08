.class final Lcom/xueqiu/android/message/client/a$25;
.super Ljava/lang/Object;
.source "CommandHandler.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/client/a;->a(Lcom/snowballfinance/messageplatform/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Lrx/a",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/client/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/a;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/xueqiu/android/message/client/a$25;->a:Lcom/xueqiu/android/message/client/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 330
    check-cast p1, Ljava/util/List;

    .line 1333
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1334
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/storage/DBManager;->getUsersByUserIds(Ljava/util/Set;)Lcom/xueqiu/android/base/storage/ResultSet;

    move-result-object v0

    .line 1335
    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/ResultSet;->missed()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v0

    .line 330
    return-object v0
.end method
