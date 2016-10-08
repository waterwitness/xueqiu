.class final Lcom/xueqiu/android/message/d$6;
.super Ljava/lang/Object;
.source "TalkListFragment.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/d;->C()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Lcom/xueqiu/android/message/model/Talk;",
        "Lcom/xueqiu/android/message/model/Talk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/d;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/xueqiu/android/message/d$6;->a:Lcom/xueqiu/android/message/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 258
    check-cast p1, Lcom/xueqiu/android/message/model/Talk;

    .line 1261
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1262
    invoke-static {p1}, Lcom/xueqiu/android/message/d;->a(Lcom/xueqiu/android/message/model/Talk;)V

    .line 258
    :cond_0
    return-object p1
.end method
