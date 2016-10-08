.class public final Lrx/j/c;
.super Ljava/lang/Object;
.source "MultipleAssignmentSubscription.java"

# interfaces
.implements Lrx/j;


# static fields
.field static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lrx/j/c;",
            "Lrx/j/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volatile a:Lrx/j/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const-class v0, Lrx/j/c;

    const-class v1, Lrx/j/d;

    const-string v2, "a"

    .line 31
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/j/c;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lrx/j/d;

    const/4 v1, 0x0

    invoke-static {}, Lrx/j/g;->a()Lrx/j;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lrx/j/d;-><init>(ZLrx/j;)V

    iput-object v0, p0, Lrx/j/c;->a:Lrx/j/d;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lrx/j;)V
    .locals 3

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Subscription can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iget-object v0, p0, Lrx/j/c;->a:Lrx/j/d;

    .line 86
    iget-boolean v1, v0, Lrx/j/d;->a:Z

    if-eqz v1, :cond_1

    .line 87
    invoke-interface {p1}, Lrx/j;->b()V

    .line 93
    :goto_0
    return-void

    .line 1047
    :cond_1
    new-instance v1, Lrx/j/d;

    iget-boolean v2, v0, Lrx/j/d;->a:Z

    invoke-direct {v1, v2, p1}, Lrx/j/d;-><init>(ZLrx/j;)V

    .line 92
    sget-object v2, Lrx/j/c;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 61
    :cond_0
    iget-object v0, p0, Lrx/j/c;->a:Lrx/j/d;

    .line 62
    iget-boolean v1, v0, Lrx/j/d;->a:Z

    if-eqz v1, :cond_1

    .line 69
    :goto_0
    return-void

    .line 1043
    :cond_1
    new-instance v1, Lrx/j/d;

    const/4 v2, 0x1

    iget-object v3, v0, Lrx/j/d;->b:Lrx/j;

    invoke-direct {v1, v2, v3}, Lrx/j/d;-><init>(ZLrx/j;)V

    .line 67
    sget-object v2, Lrx/j/c;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v0, v0, Lrx/j/d;->b:Lrx/j;

    invoke-interface {v0}, Lrx/j;->b()V

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lrx/j/c;->a:Lrx/j/d;

    iget-boolean v0, v0, Lrx/j/d;->a:Z

    return v0
.end method
