.class final Lcom/xueqiu/android/community/c/o$1;
.super Landroid/content/BroadcastReceiver;
.source "PublicTimelineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/o;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/o;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/xueqiu/android/community/c/o$1;->a:Lcom/xueqiu/android/community/c/o;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$1;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->a(Lcom/xueqiu/android/community/c/o;)V

    .line 142
    return-void
.end method
