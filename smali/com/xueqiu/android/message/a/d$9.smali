.class final Lcom/xueqiu/android/message/a/d$9;
.super Ljava/lang/Object;
.source "ChatAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/a/d;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/User;

.field final synthetic b:Lcom/xueqiu/android/message/a/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a/d;Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/xueqiu/android/message/a/d$9;->b:Lcom/xueqiu/android/message/a/d;

    iput-object p2, p0, Lcom/xueqiu/android/message/a/d$9;->a:Lcom/xueqiu/android/community/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d$9;->b:Lcom/xueqiu/android/message/a/d;

    iget-object v1, p0, Lcom/xueqiu/android/message/a/d$9;->a:Lcom/xueqiu/android/community/model/User;

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/a/d;->a(Lcom/xueqiu/android/message/a/d;Lcom/xueqiu/android/community/model/User;)V

    .line 432
    return-void
.end method
