.class final Lrx/h/e;
.super Lrx/g;
.source "EventLoopsScheduler.java"


# static fields
.field private static final b:Lrx/d/c/g;


# instance fields
.field final a:Lrx/h/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lrx/d/c/g;

    const-string v1, "RxComputationThreadPool-"

    invoke-direct {v0, v1}, Lrx/d/c/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/h/e;->b:Lrx/d/c/g;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lrx/g;-><init>()V

    .line 63
    new-instance v0, Lrx/h/g;

    invoke-direct {v0}, Lrx/h/g;-><init>()V

    iput-object v0, p0, Lrx/h/e;->a:Lrx/h/g;

    .line 64
    return-void
.end method

.method static synthetic b()Lrx/d/c/g;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lrx/h/e;->b:Lrx/d/c/g;

    return-object v0
.end method


# virtual methods
.method public final a()Lrx/h;
    .locals 8

    .prologue
    .line 68
    new-instance v0, Lrx/h/f;

    iget-object v1, p0, Lrx/h/e;->a:Lrx/h/g;

    .line 1052
    iget-object v2, v1, Lrx/h/g;->b:[Lrx/h/h;

    iget-wide v4, v1, Lrx/h/g;->c:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, v1, Lrx/h/g;->c:J

    iget v1, v1, Lrx/h/g;->a:I

    int-to-long v6, v1

    rem-long/2addr v4, v6

    long-to-int v1, v4

    aget-object v1, v2, v1

    .line 68
    invoke-direct {v0, v1}, Lrx/h/f;-><init>(Lrx/h/h;)V

    return-object v0
.end method
