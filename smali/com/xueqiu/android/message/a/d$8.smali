.class final Lcom/xueqiu/android/message/a/d$8;
.super Ljava/lang/Object;
.source "ChatAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/a/d;->a(Landroid/widget/LinearLayout;Lcom/xueqiu/android/message/model/Message;)V
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/xueqiu/android/message/a/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a/d;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/xueqiu/android/message/a/d$8;->b:Lcom/xueqiu/android/message/a/d;

    iput-object p2, p0, Lcom/xueqiu/android/message/a/d$8;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d$8;->a:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/a/d$8;->b:Lcom/xueqiu/android/message/a/d;

    invoke-static {v1}, Lcom/xueqiu/android/message/a/d;->a(Lcom/xueqiu/android/message/a/d;)Lcom/xueqiu/android/message/ChatActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 382
    return-void
.end method
