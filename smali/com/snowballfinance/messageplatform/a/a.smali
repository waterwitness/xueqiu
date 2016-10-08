.class public Lcom/snowballfinance/messageplatform/a/a;
.super Ljava/lang/Object;
.source "Command.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static volatile c:I


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/snowballfinance/messageplatform/a/a;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 153
    const-class v1, Lcom/snowballfinance/messageplatform/a/a;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/snowballfinance/messageplatform/a/a;->c:I

    const v2, 0xffff

    if-lt v0, v2, :cond_0

    .line 154
    const/4 v0, 0x1

    sput v0, Lcom/snowballfinance/messageplatform/a/a;->c:I

    .line 158
    :goto_0
    sget v0, Lcom/snowballfinance/messageplatform/a/a;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 156
    :cond_0
    :try_start_1
    sget v0, Lcom/snowballfinance/messageplatform/a/a;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/snowballfinance/messageplatform/a/a;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1091
    invoke-static {p0}, Lcom/snowballfinance/messageplatform/a/s;->a(Lcom/snowballfinance/messageplatform/a/a;)Lcom/snowballfinance/messageplatform/a/s;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 2091
    invoke-static {p0}, Lcom/snowballfinance/messageplatform/a/s;->a(Lcom/snowballfinance/messageplatform/a/a;)Lcom/snowballfinance/messageplatform/a/s;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/a/s;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2121
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 142
    if-eqz v0, :cond_1

    .line 3121
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 142
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "UNKNOWN"

    goto :goto_0

    :cond_1
    const-string v0, "-"

    goto :goto_1
.end method
