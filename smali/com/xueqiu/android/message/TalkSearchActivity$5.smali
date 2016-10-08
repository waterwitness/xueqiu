.class final Lcom/xueqiu/android/message/TalkSearchActivity$5;
.super Ljava/lang/Object;
.source "TalkSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/TalkSearchActivity;
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xueqiu/android/message/TalkSearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/TalkSearchActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkSearchActivity$5;->b:Lcom/xueqiu/android/message/TalkSearchActivity;

    iput-object p2, p0, Lcom/xueqiu/android/message/TalkSearchActivity$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$5;->b:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->a(Lcom/xueqiu/android/message/TalkSearchActivity;)Lcom/xueqiu/android/message/a/u;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkSearchActivity$5;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/a/u;->a(Ljava/util/List;)V

    .line 267
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$5;->b:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->a(Lcom/xueqiu/android/message/TalkSearchActivity;)Lcom/xueqiu/android/message/a/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/u;->notifyDataSetChanged()V

    .line 269
    :cond_0
    return-void
.end method
