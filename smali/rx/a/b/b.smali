.class final Lrx/a/b/b;
.super Ljava/lang/Object;
.source "OnSubscribeBroadcastRegister.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field private final b:Landroid/content/IntentFilter;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/a/b/b;->a:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lrx/a/b/b;->b:Landroid/content/IntentFilter;

    .line 38
    iput-object v0, p0, Lrx/a/b/b;->c:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lrx/a/b/b;->d:Landroid/os/Handler;

    .line 40
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 28
    check-cast p1, Lrx/i;

    .line 1044
    new-instance v0, Lrx/a/b/b$1;

    invoke-direct {v0, p0, p1}, Lrx/a/b/b$1;-><init>(Lrx/a/b/b;Lrx/i;)V

    .line 1051
    new-instance v1, Lrx/a/b/b$2;

    invoke-direct {v1, p0, v0}, Lrx/a/b/b$2;-><init>(Lrx/a/b/b;Landroid/content/BroadcastReceiver;)V

    invoke-static {v1}, Lrx/j/g;->a(Lrx/c/a;)Lrx/j;

    move-result-object v1

    .line 1058
    invoke-virtual {p1, v1}, Lrx/i;->a(Lrx/j;)V

    .line 1059
    iget-object v1, p0, Lrx/a/b/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lrx/a/b/b;->b:Landroid/content/IntentFilter;

    iget-object v3, p0, Lrx/a/b/b;->c:Ljava/lang/String;

    iget-object v4, p0, Lrx/a/b/b;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 28
    return-void
.end method
