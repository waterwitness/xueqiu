.class final Lcom/xueqiu/android/message/d$5;
.super Ljava/lang/Object;
.source "TalkListFragment.java"

# interfaces
.implements Lrx/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/d;->C()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/g",
        "<",
        "Lcom/xueqiu/android/message/model/Talk;",
        "Lcom/xueqiu/android/message/model/Talk;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/d;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/xueqiu/android/message/d$5;->a:Lcom/xueqiu/android/message/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 267
    check-cast p1, Lcom/xueqiu/android/message/model/Talk;

    check-cast p2, Lcom/xueqiu/android/message/model/Talk;

    .line 1270
    invoke-virtual {p2}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 267
    return-object v0
.end method
