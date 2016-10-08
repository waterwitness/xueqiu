.class final Lrx/i/m$1;
.super Ljava/lang/Object;
.source "SubjectSubscriptionManager.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/i/m;
.end annotation


# instance fields
.field final synthetic a:Lrx/i/o;

.field final synthetic b:Lrx/i/m;


# direct methods
.method constructor <init>(Lrx/i/m;Lrx/i/o;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lrx/i/m$1;->b:Lrx/i/m;

    iput-object p2, p0, Lrx/i/m$1;->a:Lrx/i/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lrx/i/m$1;->b:Lrx/i/m;

    iget-object v1, p0, Lrx/i/m$1;->a:Lrx/i/o;

    invoke-virtual {v0, v1}, Lrx/i/m;->a(Lrx/i/o;)V

    .line 72
    return-void
.end method
