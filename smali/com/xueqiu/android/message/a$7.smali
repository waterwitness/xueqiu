.class final Lcom/xueqiu/android/message/a$7;
.super Lcom/xueqiu/android/base/b/p;
.source "GroupProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/a;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/message/model/IMGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/xueqiu/android/message/a$7;->a:Lcom/xueqiu/android/message/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 148
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 149
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 145
    check-cast p1, Lcom/xueqiu/android/message/model/IMGroup;

    .line 1153
    if-eqz p1, :cond_0

    .line 1157
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/DBManager;->saveIMGroup(Lcom/xueqiu/android/message/model/IMGroup;)Z

    .line 1158
    iget-object v0, p0, Lcom/xueqiu/android/message/a$7;->a:Lcom/xueqiu/android/message/a;

    invoke-static {v0, p1}, Lcom/xueqiu/android/message/a;->a(Lcom/xueqiu/android/message/a;Lcom/xueqiu/android/message/model/IMGroup;)V

    .line 145
    :cond_0
    return-void
.end method
