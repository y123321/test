ALTER procedure [dbo].[SeraCodeExample](@I int) as
begin
 select top(@I) * from sys.objects
end
