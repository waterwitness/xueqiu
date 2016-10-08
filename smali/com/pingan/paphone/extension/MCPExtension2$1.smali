.class final Lcom/pingan/paphone/extension/MCPExtension2$1;
.super Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;
.source "MCPExtension2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingan/paphone/extension/MCPExtension2;->getExtension(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/pingan/paphone/extension/MCPExtension2$1;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/pingan/paphone/extension/MCPExtension2$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 205
    invoke-super {p0, p1, p2}, Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 206
    const-string v0, "MCPExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getExtension-content:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/pingan/paphone/extension/MCPExtension2$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/pingan/paphone/extension/MCPExtension2$1$3;

    invoke-direct {v1, p0}, Lcom/pingan/paphone/extension/MCPExtension2$1$3;-><init>(Lcom/pingan/paphone/extension/MCPExtension2$1;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 223
    const-string v0, "MCPExtension"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    return-void
.end method

.method public final onSuccess(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 107
    :try_start_0
    const-string v0, "MCPExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getExtension--response -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    # setter for: Lcom/pingan/paphone/extension/MCPExtension2;->gson:Lcom/google/gson/Gson;
    invoke-static {v0}, Lcom/pingan/paphone/extension/MCPExtension2;->access$002(Lcom/google/gson/Gson;)Lcom/google/gson/Gson;

    .line 111
    const-string v0, "MCPExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getExtension-content:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    # getter for: Lcom/pingan/paphone/extension/MCPExtension2;->gson:Lcom/google/gson/Gson;
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->access$000()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/pingan/domain/ExtensionDateBean;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pingan/domain/ExtensionDateBean;

    .line 114
    if-nez v0, :cond_1

    .line 117
    const-string v0, "MCPExtension"

    const-string v1, "getExtension-->Json\u6570\u636e\u89e3\u6790\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v1, v0, Lcom/pingan/domain/ExtensionDateBean;->message:Ljava/lang/String;

    .line 121
    const-string v2, "MCPExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getExtension--->msg="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v2, v0, Lcom/pingan/domain/ExtensionDateBean;->data:Lcom/pingan/domain/ExtensionDateBean$LdData;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/pingan/domain/ExtensionDateBean;->data:Lcom/pingan/domain/ExtensionDateBean$LdData;

    const-string v3, "null"

    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/pingan/domain/ExtensionDateBean;->data:Lcom/pingan/domain/ExtensionDateBean$LdData;

    const-string v3, ""

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    :cond_2
    const-string v0, "MCPExtension"

    const-string v1, "getExtension-->Json\u6570\u636e--->data\u4e3a\u7a7a\uff01"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 192
    const-string v1, "MCPExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getExtension-->json\u683c\u5f0f\u9519\u8bef--JsonSyntaxException--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v1, v0}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_3
    :try_start_1
    const-string v2, "S"

    iget-object v3, v0, Lcom/pingan/domain/ExtensionDateBean;->data:Lcom/pingan/domain/ExtensionDateBean$LdData;

    iget-object v3, v3, Lcom/pingan/domain/ExtensionDateBean$LdData;->flag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 131
    iget-object v1, v0, Lcom/pingan/domain/ExtensionDateBean;->data:Lcom/pingan/domain/ExtensionDateBean$LdData;

    iget-object v1, v1, Lcom/pingan/domain/ExtensionDateBean$LdData;->extensionInfo:Lcom/pingan/domain/ExtensionDateBean$ExtenssionInfo;

    iget-object v1, v1, Lcom/pingan/domain/ExtensionDateBean$ExtenssionInfo;->extensionNumber:Ljava/lang/String;

    # setter for: Lcom/pingan/paphone/extension/MCPExtension2;->extensionNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/pingan/paphone/extension/MCPExtension2;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    # getter for: Lcom/pingan/paphone/extension/MCPExtension2;->extensionNumber:Ljava/lang/String;
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->access$100()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pingan/main/GlobalVarHolder;->account:Ljava/lang/String;

    .line 133
    iget-object v1, v0, Lcom/pingan/domain/ExtensionDateBean;->data:Lcom/pingan/domain/ExtensionDateBean$LdData;

    iget-object v1, v1, Lcom/pingan/domain/ExtensionDateBean$LdData;->extensionInfo:Lcom/pingan/domain/ExtensionDateBean$ExtenssionInfo;

    iget-object v1, v1, Lcom/pingan/domain/ExtensionDateBean$ExtenssionInfo;->password:Ljava/lang/String;

    sput-object v1, Lcom/pingan/main/GlobalVarHolder;->password:Ljava/lang/String;

    .line 134
    iget-object v1, v0, Lcom/pingan/domain/ExtensionDateBean;->data:Lcom/pingan/domain/ExtensionDateBean$LdData;

    iget-object v1, v1, Lcom/pingan/domain/ExtensionDateBean$LdData;->systemInfo:Lcom/pingan/domain/ExtensionDateBean$SystemInfo;

    iget-object v1, v1, Lcom/pingan/domain/ExtensionDateBean$SystemInfo;->sipServer:Ljava/lang/String;

    sput-object v1, Lcom/pingan/main/GlobalVarHolder;->SBCIP:Ljava/lang/String;

    .line 135
    iget-object v1, v0, Lcom/pingan/domain/ExtensionDateBean;->data:Lcom/pingan/domain/ExtensionDateBean$LdData;

    iget-object v1, v1, Lcom/pingan/domain/ExtensionDateBean$LdData;->systemInfo:Lcom/pingan/domain/ExtensionDateBean$SystemInfo;

    iget-object v1, v1, Lcom/pingan/domain/ExtensionDateBean$SystemInfo;->realm:Ljava/lang/String;

    .line 136
    sput-object v1, Lcom/pingan/main/GlobalVarHolder;->SBCDomain:Ljava/lang/String;

    const-string v2, "gcc-sip-stg-paic.com.cn"

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 138
    const-string v1, "gcc-sip-stg.paic.com.cn"

    sput-object v1, Lcom/pingan/main/GlobalVarHolder;->SBCDomain:Ljava/lang/String;

    .line 140
    :cond_4
    iget-object v0, v0, Lcom/pingan/domain/ExtensionDateBean;->data:Lcom/pingan/domain/ExtensionDateBean$LdData;

    iget-object v0, v0, Lcom/pingan/domain/ExtensionDateBean$LdData;->systemInfo:Lcom/pingan/domain/ExtensionDateBean$SystemInfo;

    iget-object v0, v0, Lcom/pingan/domain/ExtensionDateBean$SystemInfo;->sipServerPort:Ljava/lang/String;

    sput-object v0, Lcom/pingan/main/GlobalVarHolder;->SBCPort:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/pingan/paphone/extension/MCPExtension2$1;->val$handler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 195
    :catch_1
    move-exception v0

    .line 196
    const-string v1, "MCPExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getExtension-->Exception--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v1, v0}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    :cond_5
    :try_start_2
    iget-object v2, v0, Lcom/pingan/domain/ExtensionDateBean;->data:Lcom/pingan/domain/ExtensionDateBean$LdData;

    iget-object v2, v2, Lcom/pingan/domain/ExtensionDateBean$LdData;->useAbleExtensionFlag:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 146
    iget-object v2, p0, Lcom/pingan/paphone/extension/MCPExtension2$1;->val$handler:Landroid/os/Handler;

    new-instance v3, Lcom/pingan/paphone/extension/MCPExtension2$1$1;

    invoke-direct {v3, p0}, Lcom/pingan/paphone/extension/MCPExtension2$1$1;-><init>(Lcom/pingan/paphone/extension/MCPExtension2$1;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    :cond_6
    const-string v2, "S"

    iget-object v3, v0, Lcom/pingan/domain/ExtensionDateBean;->data:Lcom/pingan/domain/ExtensionDateBean$LdData;

    iget-object v3, v3, Lcom/pingan/domain/ExtensionDateBean$LdData;->useAbleExtensionFlag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    const-string v2, "F"

    iget-object v0, v0, Lcom/pingan/domain/ExtensionDateBean;->data:Lcom/pingan/domain/ExtensionDateBean$LdData;

    iget-object v0, v0, Lcom/pingan/domain/ExtensionDateBean$LdData;->useAbleExtensionFlag:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 168
    iget-object v0, p0, Lcom/pingan/paphone/extension/MCPExtension2$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/pingan/paphone/extension/MCPExtension2$1$2;

    invoke-direct {v1, p0}, Lcom/pingan/paphone/extension/MCPExtension2$1$2;-><init>(Lcom/pingan/paphone/extension/MCPExtension2$1;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 188
    :cond_7
    const-string v0, "MCPExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getExtension-->GET_EXTENSION_OK_F--msg="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
