.class final Lcom/xueqiu/android/message/c$8;
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
    .line 338
    iput-object p1, p0, Lcom/xueqiu/android/message/c$8;->a:Lcom/xueqiu/android/message/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 338
    check-cast p1, Ljava/lang/Integer;

    .line 1341
    iget-object v0, p0, Lcom/xueqiu/android/message/c$8;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/c;->e(Lcom/xueqiu/android/message/c;I)I

    .line 1342
    iget-object v0, p0, Lcom/xueqiu/android/message/c$8;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->f(Lcom/xueqiu/android/message/c;)V

    .line 338
    return-void
.end method
