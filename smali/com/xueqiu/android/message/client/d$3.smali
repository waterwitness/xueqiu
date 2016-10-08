.class final Lcom/xueqiu/android/message/client/d$3;
.super Ljava/lang/Object;
.source "PNMessageHandler.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/client/d;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lcom/xueqiu/android/community/model/Remind;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/client/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/d;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/xueqiu/android/message/client/d$3;->a:Lcom/xueqiu/android/message/client/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 113
    check-cast p1, Lcom/xueqiu/android/community/model/Remind;

    .line 1116
    sget-object v0, Lcom/xueqiu/android/message/client/c;->g:Lrx/i/c;

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Remind;->getComments()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    .line 113
    return-void
.end method
