.class public final enum Lcom/sleepycat/b/v;
.super Ljava/lang/Enum;
.source "Durability.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/v;

.field public static final enum b:Lcom/sleepycat/b/v;

.field public static final enum c:Lcom/sleepycat/b/v;

.field private static final synthetic d:[Lcom/sleepycat/b/v;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    new-instance v0, Lcom/sleepycat/b/v;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/v;->a:Lcom/sleepycat/b/v;

    .line 147
    new-instance v0, Lcom/sleepycat/b/v;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/v;->b:Lcom/sleepycat/b/v;

    .line 158
    new-instance v0, Lcom/sleepycat/b/v;

    const-string v1, "SIMPLE_MAJORITY"

    invoke-direct {v0, v1, v4}, Lcom/sleepycat/b/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/v;->c:Lcom/sleepycat/b/v;

    .line 131
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sleepycat/b/v;

    sget-object v1, Lcom/sleepycat/b/v;->a:Lcom/sleepycat/b/v;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/v;->b:Lcom/sleepycat/b/v;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/v;->c:Lcom/sleepycat/b/v;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sleepycat/b/v;->d:[Lcom/sleepycat/b/v;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/v;
    .locals 1

    .prologue
    .line 131
    const-class v0, Lcom/sleepycat/b/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/v;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/v;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/sleepycat/b/v;->d:[Lcom/sleepycat/b/v;

    invoke-virtual {v0}, [Lcom/sleepycat/b/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/v;

    return-object v0
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    .prologue
    .line 169
    sget-object v0, Lcom/sleepycat/b/u$1;->a:[I

    invoke-virtual {p0}, Lcom/sleepycat/b/v;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown ack policy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 173
    :pswitch_0
    const/4 p1, 0x1

    .line 175
    :goto_0
    :pswitch_1
    return p1

    :pswitch_2
    div-int/lit8 v0, p1, 0x2

    add-int/lit8 p1, v0, 0x1

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
