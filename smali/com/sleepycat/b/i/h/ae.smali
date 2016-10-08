.class public final Lcom/sleepycat/b/i/h/ae;
.super Ljava/lang/Exception;
.source "ServiceDispatcher.java"


# static fields
.field static final synthetic c:Z


# instance fields
.field public final a:Lcom/sleepycat/b/i/h/ac;

.field final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 941
    const-class v0, Lcom/sleepycat/b/i/h/x;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/h/ae;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/i/h/ac;)V
    .locals 1

    .prologue
    .line 947
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 948
    sget-boolean v0, Lcom/sleepycat/b/i/h/ae;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/sleepycat/b/i/h/ac;->a:Lcom/sleepycat/b/i/h/ac;

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 949
    :cond_0
    iput-object p2, p0, Lcom/sleepycat/b/i/h/ae;->a:Lcom/sleepycat/b/i/h/ac;

    .line 950
    iput-object p1, p0, Lcom/sleepycat/b/i/h/ae;->b:Ljava/lang/String;

    .line 951
    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 959
    sget-object v0, Lcom/sleepycat/b/i/h/x$1;->b:[I

    iget-object v1, p0, Lcom/sleepycat/b/i/h/ae;->a:Lcom/sleepycat/b/i/h/ac;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/h/ac;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected response:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/h/ae;->a:Lcom/sleepycat/b/i/h/ac;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/h/ae;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 961
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad message format, for service:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/h/ae;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 967
    :goto_0
    return-object v0

    .line 964
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown service request:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/h/ae;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 967
    :pswitch_2
    const-string v0, "Service was busy"

    goto :goto_0

    .line 959
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
