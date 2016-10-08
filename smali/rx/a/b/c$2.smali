.class final Lrx/a/b/c$2;
.super Ljava/lang/Object;
.source "OnSubscribeLocalBroadcastRegister.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/a/b/c;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/content/r;

.field final synthetic b:Landroid/content/BroadcastReceiver;

.field final synthetic c:Lrx/a/b/c;


# direct methods
.method constructor <init>(Lrx/a/b/c;Landroid/support/v4/content/r;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lrx/a/b/c$2;->c:Lrx/a/b/c;

    iput-object p2, p0, Lrx/a/b/c$2;->a:Landroid/support/v4/content/r;

    iput-object p3, p0, Lrx/a/b/c$2;->b:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lrx/a/b/c$2;->a:Landroid/support/v4/content/r;

    iget-object v1, p0, Lrx/a/b/c$2;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 52
    return-void
.end method
