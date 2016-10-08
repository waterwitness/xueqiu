.class public Lcom/letpower/engine/PAEngine;
.super Lcom/letpower/engine/LDEngineDemo;
.source "PAEngine.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static local_call_type:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string v0, "PAEngine"

    sput-object v0, Lcom/letpower/engine/PAEngine;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/letpower/engine/LDEngineDemo;-><init>()V

    return-void
.end method

.method public static getLocalCallType()Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/letpower/engine/PAEngine;->local_call_type:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    return-object v0
.end method

.method public static setLocalCallType(Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;)V
    .locals 0

    .prologue
    .line 34
    sput-object p0, Lcom/letpower/engine/PAEngine;->local_call_type:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    .line 35
    return-void
.end method
