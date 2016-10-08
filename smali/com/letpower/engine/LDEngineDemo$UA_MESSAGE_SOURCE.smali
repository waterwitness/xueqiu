.class final enum Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;
.super Ljava/lang/Enum;
.source "LDEngineDemo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

.field public static final enum SYS_MESSAGE_NETWORK_CONNECTED:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

.field public static final enum SYS_MESSAGE_NETWORK_DISCONNECTED:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

.field public static final enum UA_MESSAGE_AUTH:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

.field public static final enum UA_MESSAGE_CALL:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

.field public static final enum UA_MESSAGE_FUNCTION:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

.field public static final enum UA_MESSAGE_NET_REPORT:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

.field public static final enum UA_MESSAGE_NULL:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

.field public static final enum UA_MESSAGE_REGISTER:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

.field public static final enum UA_MESSAGE_SIP_MSG:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;


# instance fields
.field private final _msg_src:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 25
    new-instance v0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    const-string v1, "UA_MESSAGE_REGISTER"

    invoke-direct {v0, v1, v5, v5}, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->UA_MESSAGE_REGISTER:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    new-instance v0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    const-string v1, "UA_MESSAGE_CALL"

    invoke-direct {v0, v1, v6, v6}, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->UA_MESSAGE_CALL:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    new-instance v0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    const-string v1, "UA_MESSAGE_NET_REPORT"

    invoke-direct {v0, v1, v7, v7}, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->UA_MESSAGE_NET_REPORT:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    new-instance v0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    const-string v1, "UA_MESSAGE_FUNCTION"

    invoke-direct {v0, v1, v8, v8}, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->UA_MESSAGE_FUNCTION:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    new-instance v0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    const-string v1, "UA_MESSAGE_SIP_MSG"

    const/4 v2, 0x4

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->UA_MESSAGE_SIP_MSG:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    new-instance v0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    const-string v1, "UA_MESSAGE_AUTH"

    invoke-direct {v0, v1, v4, v4}, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->UA_MESSAGE_AUTH:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    new-instance v0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    const-string v1, "SYS_MESSAGE_NETWORK_CONNECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->SYS_MESSAGE_NETWORK_CONNECTED:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    new-instance v0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    const-string v1, "SYS_MESSAGE_NETWORK_DISCONNECTED"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->SYS_MESSAGE_NETWORK_DISCONNECTED:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    new-instance v0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    const-string v1, "UA_MESSAGE_NULL"

    const/16 v2, 0x8

    const/16 v3, 0xff

    invoke-direct {v0, v1, v2, v3}, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->UA_MESSAGE_NULL:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    .line 24
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    sget-object v1, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->UA_MESSAGE_REGISTER:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->UA_MESSAGE_CALL:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->UA_MESSAGE_NET_REPORT:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->UA_MESSAGE_FUNCTION:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->UA_MESSAGE_SIP_MSG:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    aput-object v2, v0, v1

    sget-object v1, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->UA_MESSAGE_AUTH:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    aput-object v1, v0, v4

    const/4 v1, 0x6

    sget-object v2, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->SYS_MESSAGE_NETWORK_CONNECTED:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->SYS_MESSAGE_NETWORK_DISCONNECTED:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->UA_MESSAGE_NULL:Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->ENUM$VALUES:[Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->_msg_src:I

    .line 31
    return-void
.end method

.method public static getByValue(I)Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;
    .locals 5

    .prologue
    .line 34
    invoke-static {}, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->values()[Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No datatype with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    aget-object v3, v1, v0

    .line 35
    iget v4, v3, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->_msg_src:I

    if-ne v4, p0, :cond_1

    .line 36
    return-object v3

    .line 34
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    return-object v0
.end method

.method public static values()[Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;->ENUM$VALUES:[Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    array-length v1, v0

    new-array v2, v1, [Lcom/letpower/engine/LDEngineDemo$UA_MESSAGE_SOURCE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
