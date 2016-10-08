.class final Lcom/xueqiu/android/community/j;
.super Ljava/lang/Object;
.source "RechargeActivity.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/RechargeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/RechargeActivity;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/xueqiu/android/community/j;->a:Lcom/xueqiu/android/community/RechargeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final payByAlipay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 136
    new-instance v0, Lcom/xueqiu/android/community/j$1;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/community/j$1;-><init>(Lcom/xueqiu/android/community/j;Ljava/lang/String;)V

    .line 153
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 154
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 155
    return-void
.end method
