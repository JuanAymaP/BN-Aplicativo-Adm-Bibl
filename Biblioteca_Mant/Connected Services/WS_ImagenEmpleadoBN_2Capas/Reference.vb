﻿'------------------------------------------------------------------------------
' <auto-generated>
'     Este código fue generado por una herramienta.
'     Versión de runtime:4.0.30319.42000
'
'     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
'     se vuelve a generar el código.
' </auto-generated>
'------------------------------------------------------------------------------

Option Strict On
Option Explicit On

Imports System.Data

Namespace WS_ImagenEmpleadoBN_2Capas
    
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0"),  _
     System.ServiceModel.ServiceContractAttribute(ConfigurationName:="WS_ImagenEmpleadoBN_2Capas.ws_Imagen_EmpleadoBNSoap")>  _
    Public Interface ws_Imagen_EmpleadoBNSoap
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/Buscar_Foto", ReplyAction:="*"),  _
         System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults:=true)>  _
        Function Buscar_Foto(ByVal v_DNIEmpl As String) As System.Data.DataSet
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/Buscar_Foto", ReplyAction:="*")>  _
        Function Buscar_FotoAsync(ByVal v_DNIEmpl As String) As System.Threading.Tasks.Task(Of System.Data.DataSet)
    End Interface
    
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")>  _
    Public Interface ws_Imagen_EmpleadoBNSoapChannel
        Inherits WS_ImagenEmpleadoBN_2Capas.ws_Imagen_EmpleadoBNSoap, System.ServiceModel.IClientChannel
    End Interface
    
    <System.Diagnostics.DebuggerStepThroughAttribute(),  _
     System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")>  _
    Partial Public Class ws_Imagen_EmpleadoBNSoapClient
        Inherits System.ServiceModel.ClientBase(Of WS_ImagenEmpleadoBN_2Capas.ws_Imagen_EmpleadoBNSoap)
        Implements WS_ImagenEmpleadoBN_2Capas.ws_Imagen_EmpleadoBNSoap
        
        Public Sub New()
            MyBase.New
        End Sub
        
        Public Sub New(ByVal endpointConfigurationName As String)
            MyBase.New(endpointConfigurationName)
        End Sub
        
        Public Sub New(ByVal endpointConfigurationName As String, ByVal remoteAddress As String)
            MyBase.New(endpointConfigurationName, remoteAddress)
        End Sub
        
        Public Sub New(ByVal endpointConfigurationName As String, ByVal remoteAddress As System.ServiceModel.EndpointAddress)
            MyBase.New(endpointConfigurationName, remoteAddress)
        End Sub
        
        Public Sub New(ByVal binding As System.ServiceModel.Channels.Binding, ByVal remoteAddress As System.ServiceModel.EndpointAddress)
            MyBase.New(binding, remoteAddress)
        End Sub
        
        Public Function Buscar_Foto(ByVal v_DNIEmpl As String) As System.Data.DataSet Implements WS_ImagenEmpleadoBN_2Capas.ws_Imagen_EmpleadoBNSoap.Buscar_Foto
            Return MyBase.Channel.Buscar_Foto(v_DNIEmpl)
        End Function
        
        Public Function Buscar_FotoAsync(ByVal v_DNIEmpl As String) As System.Threading.Tasks.Task(Of System.Data.DataSet) Implements WS_ImagenEmpleadoBN_2Capas.ws_Imagen_EmpleadoBNSoap.Buscar_FotoAsync
            Return MyBase.Channel.Buscar_FotoAsync(v_DNIEmpl)
        End Function
    End Class
End Namespace
