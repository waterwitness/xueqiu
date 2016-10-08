.class final Lcom/xueqiu/android/message/c$17;
.super Ljava/lang/Object;
.source "RecentTalkFragment.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/c;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Ljava/lang/Throwable;",
        "Lrx/a",
        "<+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/c;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/xueqiu/android/message/c$17;->a:Lcom/xueqiu/android/message/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1612
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Object;)Lrx/a;

    move-result-object v0

    .line 609
    return-object v0
.end method
