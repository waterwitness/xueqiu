.class final Lrx/d/a/v;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lrx/j;


# static fields
.field static final c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/d/a/v;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lrx/h;

.field volatile b:I

.field final d:Lrx/d/c/f;

.field volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 213
    const-class v0, Lrx/d/a/v;

    const-string v1, "b"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/d/a/v;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/h;Lrx/d/c/f;)V
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/d/a/v;->e:Z

    .line 218
    iput-object p1, p0, Lrx/d/a/v;->a:Lrx/h;

    .line 219
    iput-object p2, p0, Lrx/d/a/v;->d:Lrx/d/c/f;

    .line 220
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 229
    sget-object v0, Lrx/d/a/v;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lrx/d/a/v;->a:Lrx/h;

    new-instance v1, Lrx/d/a/v$1;

    invoke-direct {v1, p0}, Lrx/d/a/v$1;-><init>(Lrx/d/a/v;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 238
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lrx/d/a/v;->e:Z

    return v0
.end method
