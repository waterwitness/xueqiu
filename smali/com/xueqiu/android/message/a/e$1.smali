.class final Lcom/xueqiu/android/message/a/e$1;
.super Ljava/lang/Object;
.source "ChatAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/a/e;
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/xueqiu/android/message/ChatActivity;

.field final synthetic c:Lcom/xueqiu/android/message/a/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a/e;Lorg/json/JSONObject;Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/xueqiu/android/message/a/e$1;->c:Lcom/xueqiu/android/message/a/e;

    iput-object p2, p0, Lcom/xueqiu/android/message/a/e$1;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/xueqiu/android/message/a/e$1;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/xueqiu/android/message/a/e$1;->a:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/a/e$1;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 504
    return-void
.end method
