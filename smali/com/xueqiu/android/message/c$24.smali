.class final Lcom/xueqiu/android/message/c$24;
.super Ljava/lang/Object;
.source "RecentTalkFragment.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/c;->a(Lcom/xueqiu/android/message/model/Talk;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/model/Talk;

.field final synthetic b:Lcom/xueqiu/android/message/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/message/model/Talk;)V
    .locals 0

    .prologue
    .line 728
    iput-object p1, p0, Lcom/xueqiu/android/message/c$24;->b:Lcom/xueqiu/android/message/c;

    iput-object p2, p0, Lcom/xueqiu/android/message/c$24;->a:Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/xueqiu/android/message/c$24;->a:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/xueqiu/android/message/c$24;->a:Lcom/xueqiu/android/message/model/Talk;

    iget-object v1, p0, Lcom/xueqiu/android/message/c$24;->a:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/af;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setPinyin(Ljava/lang/String;)V

    .line 734
    :cond_0
    return-void
.end method
